`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/12 15:36:53
// Design Name: 
// Module Name: spi_dac
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/1ps

module spi_dac #(
    parameter int PRESCALE  = 2,    // 2 = 50MHz SPI (at 100MHz sys_clk)
    parameter int TAIL_BITS = 2,
    parameter bit CPOL      = 0,
    parameter bit CPHA      = 1
)(
    input  logic        clk,
    input  logic        reset_n,

    // AXI-Stream Slave Interface
    input  logic [63:0] s_axis_tdata,
    input  logic        s_axis_tvalid,
    output logic        s_axis_tready,

    // SPI Interface
    output logic        CS,
    output logic        SCK,
    output logic        SDI,
    output logic        LDAC,

    // Status
    output logic        finished,
    output logic        busy
);

    // -------------------------------------------------------------------------
    // 1. Parameter Validation & Constants
    // -------------------------------------------------------------------------
    initial begin
        if (PRESCALE < 2) $error("PRESCALE must be >= 2");
    end

    // Frame Structure Constants
    localparam int STX_BITS    = 2;
    localparam int LOAD_BITS   = 2;
    localparam int RSV_BITS    = 1;
    localparam int DACSEL_BITS = 2;
    localparam int DB16_BITS   = 1;
    localparam int DATA_BITS   = 16;
    
    localparam int TOTAL_BIT_LEN = STX_BITS + LOAD_BITS + RSV_BITS + 
                                   DACSEL_BITS + DB16_BITS + DATA_BITS + TAIL_BITS;

    localparam logic [1:0] CMD_STX      = 2'b00;
    localparam logic [1:0] CMD_LOADMODE = 2'b01;
    localparam logic       CMD_DB16     = 1'b0;


    typedef enum logic [1:0] {
        S_IDLE,
        S_LOAD,
        S_SEND,
        S_FINISH
    } state_t;

    state_t state, state_next;


    logic [63:0] data_buf;
    logic [1:0]  ch_cnt;
    logic [TOTAL_BIT_LEN-1:0] shreg;
    
    localparam int DIV_WIDTH = (PRESCALE > 1) ? $clog2(PRESCALE) : 1;
    logic [DIV_WIDTH-1:0] div_cnt;
    logic [$clog2(TOTAL_BIT_LEN*2+1)-1:0] bit_edge_cnt;

    logic tick_sck_edge;

    logic [15:0] current_sample;

    logic [TOTAL_BIT_LEN-1:0] next_payload;

    assign busy = (state != S_IDLE);
    assign LDAC = 1'b0; // Fixed Low

    always_comb begin
        case (ch_cnt)
            2'b00: current_sample = data_buf[15:0];
            2'b01: current_sample = data_buf[31:16];
            2'b10: current_sample = data_buf[47:32];
            2'b11: current_sample = data_buf[63:48];
            default: current_sample = 16'h0;
        endcase
    end

    assign next_payload = {
        CMD_STX,
        CMD_LOADMODE,
        1'b0,          // RSV
        ch_cnt,        // DAC Address
        CMD_DB16,
        current_sample,
        {TAIL_BITS{1'b0}}
    };

    logic div_cnt_match;
    assign div_cnt_match = (div_cnt == (PRESCALE/2 - 1));

    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            div_cnt <= '0;
        end else if (state != S_IDLE) begin
            if (div_cnt_match) div_cnt <= '0;
            else               div_cnt <= div_cnt + 1'b1;
        end else begin
            div_cnt <= '0;
        end
    end

    assign tick_sck_edge = div_cnt_match;

    always_comb begin
        state_next = state;

        case (state)
            S_IDLE: begin
                if (s_axis_tvalid && s_axis_tready) 
                    state_next = S_LOAD;
            end

            S_LOAD: begin
                if (tick_sck_edge) 
                    state_next = S_SEND;
            end

            S_SEND: begin
                if (tick_sck_edge && (bit_edge_cnt == TOTAL_BIT_LEN*2 - 1)) begin
                    if (ch_cnt == 2'b11) state_next = S_FINISH;
                    else                 state_next = S_LOAD;
                end
            end

            S_FINISH: begin
                if (tick_sck_edge) 
                    state_next = S_IDLE;
            end
            
            default: state_next = S_IDLE;
        endcase
    end

    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            state      <= S_IDLE;
            s_axis_tready   <= 1'b1;
            CS              <= 1'b1;
            SCK             <= CPOL;
            SDI             <= 1'b0;
            finished        <= 1'b0;
            ch_cnt          <= 2'b00;
            bit_edge_cnt    <= '0;
            shreg           <= '0;
            data_buf        <= '0;
        end else begin
            state <= state_next;

            finished <= 1'b0;

            case (state)
                S_IDLE: begin
                    s_axis_tready <= 1'b1;
                    CS            <= 1'b1;
                    SCK           <= CPOL;
                    ch_cnt        <= 2'b00;
                    bit_edge_cnt  <= '0;
                    
                    if (s_axis_tvalid && s_axis_tready) begin
                        data_buf      <= s_axis_tdata;
                        s_axis_tready <= 1'b0;
                    end
                end

                S_LOAD: begin
                    CS  <= 1'b1;
                    SCK <= CPOL;

                    if (tick_sck_edge) begin
                        shreg        <= next_payload;
                        SDI          <= next_payload[TOTAL_BIT_LEN-1]; // MSB First
                        bit_edge_cnt <= '0;
                    end
                end

                S_SEND: begin
                    CS <= 1'b0;

                    if (tick_sck_edge) begin
                        SCK <= ~SCK;
                        bit_edge_cnt <= bit_edge_cnt + 1;
                        
                        if ((CPHA == 0 && SCK != CPOL) || (CPHA == 1 && SCK == CPOL)) begin
                             shreg <= {shreg[TOTAL_BIT_LEN-2:0], 1'b0};
                             SDI   <= shreg[TOTAL_BIT_LEN-1];
                        end
                        
                        if (bit_edge_cnt == TOTAL_BIT_LEN*2 - 1) begin
                            if (ch_cnt != 2'b11) begin
                                ch_cnt <= ch_cnt + 1'b1;
                            end
                        end
                    end
                end

                S_FINISH: begin
                    CS  <= 1'b1;
                    SDI <= 1'b0;
                    if (tick_sck_edge) begin
                        finished <= 1'b1;
                        s_axis_tready <= 1'b1; 
                    end
                end
            endcase
        end
    end

endmodule