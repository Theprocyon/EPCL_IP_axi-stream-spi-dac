`timescale 1ns/1ps

module tb_spi_dac_100m_to_50m;

  localparam real CLK_PERIOD_NS = 10.0;

  localparam [63:0] SAMPLE0 = {16'hDDDD, 16'hCCCC, 16'hBBBB, 16'hAAAA};
  localparam [63:0] SAMPLE1 = {16'h1234, 16'h5678, 16'h9ABC, 16'hDEF0};

  reg clk = 1'b0;
  reg reset = 1'b0;
  always #(CLK_PERIOD_NS/2.0) clk = ~clk;

  reg  [63:0] s_axis_tdata  = 64'd0;
  reg         s_axis_tvalid = 1'b0;
  wire        s_axis_tready;

  wire CS, SDI, SCK, LDAC;
  wire finished;
  wire busy;

  spi_dac #(
    .PRESCALE(2),
    .TAIL_BITS(2),
    .CPOL(0),
    .CPHA(1)
  ) dut (
    .clk(clk),
    .reset_n(reset),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .CS(CS),
    .SCK(SCK),
    .SDI(SDI),
    .LDAC(LDAC),
    .finished(finished),
    .busy(busy)
  );

  initial begin
    $dumpfile("tb_spi_dac_100m_50m.vcd");
    $dumpvars(0, tb_spi_dac_100m_to_50m);

    repeat (5) @(posedge clk);
    reset <= 1'b1;

    wait (s_axis_tready);
    @(posedge clk);
    s_axis_tdata  <= SAMPLE0;
    s_axis_tvalid <= 1'b1;
    @(posedge clk);
    s_axis_tvalid <= 1'b0;

    @(posedge finished);
    repeat (100) @(posedge clk);

    wait (s_axis_tready);
    @(posedge clk);
    s_axis_tdata  <= SAMPLE1;
    s_axis_tvalid <= 1'b1;
    @(posedge clk);
    s_axis_tvalid <= 1'b0;

    @(posedge finished);
    repeat (20) @(posedge clk);
    $finish;
  end

endmodule
