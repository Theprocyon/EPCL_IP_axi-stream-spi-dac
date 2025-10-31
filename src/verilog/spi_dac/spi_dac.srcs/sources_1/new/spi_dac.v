`timescale 1ns/1ps

module spi_dac #(
    parameter integer PRESCALE  = 2,
    parameter integer TAIL_BITS = 2,
    parameter         CPOL      = 0,
    parameter         CPHA      = 0
)(
    input  wire        clk,
    input  wire        reset_n,

    input  wire [63:0] s_axis_tdata,
    input  wire        s_axis_tvalid,
    output reg         s_axis_tready,

    output reg         CS,
    output wire        SCK,
    output reg         SDI,
    output wire        LDAC,

    output reg         finished,
    output wire        busy
);

  localparam [1:0] STX      = 2'b00;
  localparam [1:0] LOADMODE = 2'b01;
  localparam       DB16     = 1'b0;

  localparam integer STX_BITS      = 2;
  localparam integer LOAD_BITS     = 2;
  localparam integer RSV_BITS      = 1;
  localparam integer DACSEL_BITS   = 2;
  localparam integer DB16_BITS     = 1;
  localparam integer DATA_BITS     = 16;
  localparam integer BITLEN =
      STX_BITS + LOAD_BITS + RSV_BITS + DACSEL_BITS + DB16_BITS + DATA_BITS + TAIL_BITS;

  localparam [1:0] IDLE   = 2'b00;
  localparam [1:0] LOAD   = 2'b01;
  localparam [1:0] SEND   = 2'b10;
  localparam [1:0] FINISH = 2'b11;

  reg [1:0]  state = IDLE;
  reg [63:0] data_buf = 64'h0;
  reg [1:0]  ch_cnt = 2'b00;

  assign busy = (state != IDLE);
  assign LDAC = 1'b0;

  reg [$clog2(PRESCALE)-1:0] divcnt = 0;
  reg sck_q = CPOL;
  assign SCK = sck_q;

  reg edge_ce = 1'b0;

  reg [BITLEN-1:0] shreg = {BITLEN{1'b0}};
  reg [$clog2(BITLEN*2+4)-1:0] cnt = 0;

  wire [15:0] current_data = (ch_cnt == 2'b00) ? data_buf[15:0] :
                              (ch_cnt == 2'b01) ? data_buf[31:16] :
                              (ch_cnt == 2'b10) ? data_buf[47:32] :
                                                   data_buf[63:48];

  wire [BITLEN-1:0] payload = {
      STX,
      LOADMODE,
      1'b0,
      ch_cnt[1:0],
      DB16,
      current_data[15:0],
      {TAIL_BITS{1'b0}}
  };

  always @(posedge clk) begin
    if (!reset_n) begin
      state          <= IDLE;
      data_buf       <= 64'h0;
      ch_cnt         <= 2'b00;
      s_axis_tready  <= 1'b1;
      finished       <= 1'b0;
      CS             <= 1'b1;
      SDI            <= 1'b0;
      shreg          <= {BITLEN{1'b0}};
      cnt            <= 0;
      sck_q          <= CPOL;
      divcnt         <= 0;
      edge_ce        <= 1'b0;
    end else begin
      finished <= 1'b0;

      case (state)
        IDLE: begin
          s_axis_tready <= 1'b1;
          CS            <= 1'b1;
          SDI           <= 1'b0;
          sck_q         <= CPOL;
          divcnt        <= 0;
          edge_ce       <= 1'b0;

          if (s_axis_tvalid && s_axis_tready) begin
            data_buf      <= s_axis_tdata;
            ch_cnt        <= 2'b00;
            s_axis_tready <= 1'b0;
            state         <= LOAD;
            CS            <= 1'b0;
          end
        end

        LOAD: begin
          shreg  <= payload;
          SDI    <= payload[BITLEN-1];
          cnt    <= 0;
          divcnt <= 0;
          sck_q  <= CPOL;
          state  <= SEND;
        end

        SEND: begin
          if (cnt < BITLEN*2) begin
            if (divcnt == PRESCALE/2-1) begin
              divcnt  <= 0;
              sck_q   <= ~sck_q;
              edge_ce <= 1'b1;
            end else begin
              divcnt  <= divcnt + 1;
              edge_ce <= 1'b0;
            end

            if (edge_ce) begin
              if ((CPHA==0 && sck_q != CPOL) || (CPHA==1 && sck_q == CPOL)) begin
                shreg <= {shreg[BITLEN-2:0], 1'b0};
                SDI   <= shreg[BITLEN-2];
              end
              cnt <= cnt + 1;
            end
          end else begin
            sck_q   <= CPOL;
            edge_ce <= 1'b0;
            cnt     <= cnt + 1;

            if (cnt == BITLEN*2) begin
              if (ch_cnt != 2'b11) begin
                ch_cnt <= ch_cnt + 1;
                shreg  <= payload;
                SDI    <= payload[BITLEN-1];
              end
            end

            if (cnt == (BITLEN*2+2)) begin
              if (ch_cnt == 2'b11) begin
                state <= FINISH;
              end else begin
                cnt    <= 0;
                divcnt <= 0;
                sck_q  <= CPOL;
              end
            end
          end
        end

        FINISH: begin
          CS       <= 1'b1;
          SDI      <= 1'b0;
          finished <= 1'b1;
          state    <= IDLE;
          cnt      <= 0;
        end

        default: begin
          state <= IDLE;
        end
      endcase
    end
  end

endmodule
