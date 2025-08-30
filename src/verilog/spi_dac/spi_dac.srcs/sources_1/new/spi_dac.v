`timescale 1ns/1ps

module spi_dac #(
    parameter integer PRESCALE  = 2,    // SCK = fabric clk / PRESCALE
    parameter [1:0]   DAC_CH    = 2'b00,
    parameter integer TAIL_BITS = 2,
    parameter         CPOL      = 0,    // Clock Polarity
    parameter         CPHA      = 0     // Clock Phase
)(
    input  wire        clk,
    input  wire        reset_n,

    input  wire [15:0] s_axis_tdata,
    input  wire        s_axis_tvalid,
    output wire        s_axis_tready,

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

  reg         started  = 1'b0;
  assign      busy     = started;
  assign      s_axis_tready = ~started;
  assign      LDAC     = 1'b0;

  // ---- SCK prescaler ----
  reg [$clog2(PRESCALE)-1:0] divcnt = 0;
  reg sck_q = CPOL;
  assign SCK = sck_q;

  reg edge_ce = 1'b0;

  // ---- Shift register & cvounter ----
  reg [BITLEN-1:0] shreg = {BITLEN{1'b0}};
  reg [$clog2(BITLEN*2+4)-1:0] cnt = 0;

  wire [BITLEN-1:0] payload = {
      STX,
      LOADMODE,
      1'b0,
      DAC_CH[1:0],
      DB16,
      s_axis_tdata[15:0],
      {TAIL_BITS{1'b0}}
  };

  // ---- FSM ----
  always @(posedge clk) begin
    if (!reset_n) begin
      started  <= 1'b0;
      finished <= 1'b0;
      CS       <= 1'b1;
      SDI      <= 1'b0;
      shreg    <= {BITLEN{1'b0}};
      cnt      <= 0;
      sck_q    <= CPOL;
      divcnt   <= 0;
      edge_ce  <= 1'b0;
    end else begin
      finished <= 1'b0;

      // Start
      if (!started && s_axis_tvalid && s_axis_tready) begin
        shreg   <= payload;
        started <= 1'b1;
        cnt     <= 0;
        divcnt  <= 0;
        CS      <= 1'b0;
        SDI     <= payload[BITLEN-1];
        sck_q   <= CPOL; // idle에서 시작
      end

      // progress..
      else if (started) begin
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
        end


        else begin
          sck_q   <= CPOL; 
          edge_ce <= 1'b0;
          cnt     <= cnt + 1;

          if (cnt == (BITLEN*2+2)) begin
            CS       <= 1'b1;
            SDI      <= 1'b0;
            finished <= 1'b1;
            started  <= 1'b0;
            cnt      <= 0;
          end
        end
      end


      else begin
        CS   <= 1'b1;
        SDI  <= 1'b0;
        sck_q<= CPOL;
        divcnt <= 0;
        edge_ce <= 1'b0;
      end
    end
  end

endmodule
