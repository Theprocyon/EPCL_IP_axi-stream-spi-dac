// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Dec 12 16:16:02 2025
// Host        : THEP_EPCL running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/thepr/Documents/git/FPGA/EPCL_IP_axi-stream-spi-dac/src/verilog/spi_dac/spi_dac.sim/sim_1/synth/func/xsim/tb_spi_dac_100m_to_50m_func_synth.v
// Design      : spi_dac
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CMD_DB16 = "1'b0" *) (* CMD_LOADMODE = "2'b01" *) (* CMD_STX = "2'b00" *) 
(* CPHA = "1'b1" *) (* CPOL = "1'b0" *) (* DACSEL_BITS = "2" *) 
(* DATA_BITS = "16" *) (* DB16_BITS = "1" *) (* DIV_WIDTH = "1" *) 
(* LOAD_BITS = "2" *) (* PRESCALE = "2" *) (* RSV_BITS = "1" *) 
(* STX_BITS = "2" *) (* TAIL_BITS = "2" *) (* TOTAL_BIT_LEN = "26" *) 
(* NotValidForBitStream *)
module spi_dac
   (clk,
    reset_n,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    CS,
    SCK,
    SDI,
    LDAC,
    finished,
    busy);
  input clk;
  input reset_n;
  input [63:0]s_axis_tdata;
  input s_axis_tvalid;
  output s_axis_tready;
  output CS;
  output SCK;
  output SDI;
  output LDAC;
  output finished;
  output busy;

  wire CS;
  wire CS_OBUF;
  wire CS_i_1_n_0;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire LDAC;
  wire SCK;
  wire SCK_OBUF;
  wire SCK_i_1_n_0;
  wire SDI;
  wire SDI_OBUF;
  wire SDI_i_1_n_0;
  wire SDI_i_2_n_0;
  wire \bit_edge_cnt[0]_i_1_n_0 ;
  wire \bit_edge_cnt[1]_i_1_n_0 ;
  wire \bit_edge_cnt[2]_i_1_n_0 ;
  wire \bit_edge_cnt[3]_i_1_n_0 ;
  wire \bit_edge_cnt[4]_i_1_n_0 ;
  wire \bit_edge_cnt[5]_i_1_n_0 ;
  wire \bit_edge_cnt[5]_i_2_n_0 ;
  wire \bit_edge_cnt[5]_i_3_n_0 ;
  wire \bit_edge_cnt_reg_n_0_[0] ;
  wire \bit_edge_cnt_reg_n_0_[1] ;
  wire \bit_edge_cnt_reg_n_0_[2] ;
  wire \bit_edge_cnt_reg_n_0_[3] ;
  wire \bit_edge_cnt_reg_n_0_[4] ;
  wire \bit_edge_cnt_reg_n_0_[5] ;
  wire busy;
  wire busy_OBUF;
  wire \ch_cnt[0]_i_1_n_0 ;
  wire \ch_cnt[1]_i_1_n_0 ;
  wire \ch_cnt_reg_n_0_[0] ;
  wire \ch_cnt_reg_n_0_[1] ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [0:0]data_buf;
  wire \data_buf_reg_n_0_[0] ;
  wire \data_buf_reg_n_0_[10] ;
  wire \data_buf_reg_n_0_[11] ;
  wire \data_buf_reg_n_0_[12] ;
  wire \data_buf_reg_n_0_[13] ;
  wire \data_buf_reg_n_0_[14] ;
  wire \data_buf_reg_n_0_[15] ;
  wire \data_buf_reg_n_0_[16] ;
  wire \data_buf_reg_n_0_[17] ;
  wire \data_buf_reg_n_0_[18] ;
  wire \data_buf_reg_n_0_[19] ;
  wire \data_buf_reg_n_0_[1] ;
  wire \data_buf_reg_n_0_[20] ;
  wire \data_buf_reg_n_0_[21] ;
  wire \data_buf_reg_n_0_[22] ;
  wire \data_buf_reg_n_0_[23] ;
  wire \data_buf_reg_n_0_[24] ;
  wire \data_buf_reg_n_0_[25] ;
  wire \data_buf_reg_n_0_[26] ;
  wire \data_buf_reg_n_0_[27] ;
  wire \data_buf_reg_n_0_[28] ;
  wire \data_buf_reg_n_0_[29] ;
  wire \data_buf_reg_n_0_[2] ;
  wire \data_buf_reg_n_0_[30] ;
  wire \data_buf_reg_n_0_[31] ;
  wire \data_buf_reg_n_0_[32] ;
  wire \data_buf_reg_n_0_[33] ;
  wire \data_buf_reg_n_0_[34] ;
  wire \data_buf_reg_n_0_[35] ;
  wire \data_buf_reg_n_0_[36] ;
  wire \data_buf_reg_n_0_[37] ;
  wire \data_buf_reg_n_0_[38] ;
  wire \data_buf_reg_n_0_[39] ;
  wire \data_buf_reg_n_0_[3] ;
  wire \data_buf_reg_n_0_[40] ;
  wire \data_buf_reg_n_0_[41] ;
  wire \data_buf_reg_n_0_[42] ;
  wire \data_buf_reg_n_0_[43] ;
  wire \data_buf_reg_n_0_[44] ;
  wire \data_buf_reg_n_0_[45] ;
  wire \data_buf_reg_n_0_[46] ;
  wire \data_buf_reg_n_0_[47] ;
  wire \data_buf_reg_n_0_[48] ;
  wire \data_buf_reg_n_0_[49] ;
  wire \data_buf_reg_n_0_[4] ;
  wire \data_buf_reg_n_0_[50] ;
  wire \data_buf_reg_n_0_[51] ;
  wire \data_buf_reg_n_0_[52] ;
  wire \data_buf_reg_n_0_[53] ;
  wire \data_buf_reg_n_0_[54] ;
  wire \data_buf_reg_n_0_[55] ;
  wire \data_buf_reg_n_0_[56] ;
  wire \data_buf_reg_n_0_[57] ;
  wire \data_buf_reg_n_0_[58] ;
  wire \data_buf_reg_n_0_[59] ;
  wire \data_buf_reg_n_0_[5] ;
  wire \data_buf_reg_n_0_[60] ;
  wire \data_buf_reg_n_0_[61] ;
  wire \data_buf_reg_n_0_[62] ;
  wire \data_buf_reg_n_0_[63] ;
  wire \data_buf_reg_n_0_[6] ;
  wire \data_buf_reg_n_0_[7] ;
  wire \data_buf_reg_n_0_[8] ;
  wire \data_buf_reg_n_0_[9] ;
  wire finished;
  wire finished_OBUF;
  wire finished_i_1_n_0;
  wire p_0_in;
  wire reset_n;
  wire reset_n_IBUF;
  wire [63:0]s_axis_tdata;
  wire [63:0]s_axis_tdata_IBUF;
  wire s_axis_tready;
  wire s_axis_tready_OBUF;
  wire s_axis_tready_i_1_n_0;
  wire s_axis_tvalid;
  wire s_axis_tvalid_IBUF;
  wire [0:0]shreg;
  wire [24:2]shreg0_in;
  wire \shreg[10]_i_2_n_0 ;
  wire \shreg[11]_i_2_n_0 ;
  wire \shreg[12]_i_2_n_0 ;
  wire \shreg[13]_i_2_n_0 ;
  wire \shreg[14]_i_2_n_0 ;
  wire \shreg[15]_i_2_n_0 ;
  wire \shreg[16]_i_2_n_0 ;
  wire \shreg[17]_i_2_n_0 ;
  wire \shreg[2]_i_2_n_0 ;
  wire \shreg[3]_i_2_n_0 ;
  wire \shreg[4]_i_2_n_0 ;
  wire \shreg[5]_i_2_n_0 ;
  wire \shreg[6]_i_2_n_0 ;
  wire \shreg[7]_i_2_n_0 ;
  wire \shreg[8]_i_2_n_0 ;
  wire \shreg[9]_i_2_n_0 ;
  wire \shreg_reg_n_0_[10] ;
  wire \shreg_reg_n_0_[11] ;
  wire \shreg_reg_n_0_[12] ;
  wire \shreg_reg_n_0_[13] ;
  wire \shreg_reg_n_0_[14] ;
  wire \shreg_reg_n_0_[15] ;
  wire \shreg_reg_n_0_[16] ;
  wire \shreg_reg_n_0_[17] ;
  wire \shreg_reg_n_0_[18] ;
  wire \shreg_reg_n_0_[19] ;
  wire \shreg_reg_n_0_[20] ;
  wire \shreg_reg_n_0_[21] ;
  wire \shreg_reg_n_0_[22] ;
  wire \shreg_reg_n_0_[23] ;
  wire \shreg_reg_n_0_[2] ;
  wire \shreg_reg_n_0_[3] ;
  wire \shreg_reg_n_0_[4] ;
  wire \shreg_reg_n_0_[5] ;
  wire \shreg_reg_n_0_[6] ;
  wire \shreg_reg_n_0_[7] ;
  wire \shreg_reg_n_0_[8] ;
  wire \shreg_reg_n_0_[9] ;
  wire [1:0]state;

  OBUF CS_OBUF_inst
       (.I(CS_OBUF),
        .O(CS));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    CS_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .O(CS_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    CS_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CS_i_1_n_0),
        .PRE(\FSM_sequential_state[1]_i_2_n_0 ),
        .Q(CS_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000B888)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(state[1]),
        .I2(s_axis_tready_OBUF),
        .I3(s_axis_tvalid_IBUF),
        .I4(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0F0F80F0)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\ch_cnt_reg_n_0_[1] ),
        .I1(\ch_cnt_reg_n_0_[0] ),
        .I2(state[1]),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(state[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(reset_n_IBUF),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\bit_edge_cnt_reg_n_0_[4] ),
        .I1(\bit_edge_cnt_reg_n_0_[2] ),
        .I2(\bit_edge_cnt_reg_n_0_[0] ),
        .I3(\bit_edge_cnt_reg_n_0_[1] ),
        .I4(\bit_edge_cnt_reg_n_0_[3] ),
        .I5(\bit_edge_cnt_reg_n_0_[5] ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:00,S_SEND:10,S_LOAD:01,S_FINISH:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "S_IDLE:00,S_SEND:10,S_LOAD:01,S_FINISH:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  OBUF LDAC_OBUF_inst
       (.I(1'b0),
        .O(LDAC));
  OBUF SCK_OBUF_inst
       (.I(SCK_OBUF),
        .O(SCK));
  LUT3 #(
    .INIT(8'h82)) 
    SCK_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(SCK_OBUF),
        .O(SCK_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SCK_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(SCK_i_1_n_0),
        .Q(SCK_OBUF));
  OBUF SDI_OBUF_inst
       (.I(SDI_OBUF),
        .O(SDI));
  LUT3 #(
    .INIT(8'hF4)) 
    SDI_i_1
       (.I0(SCK_OBUF),
        .I1(state[1]),
        .I2(state[0]),
        .O(SDI_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    SDI_i_2
       (.I0(p_0_in),
        .I1(state[0]),
        .O(SDI_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SDI_reg
       (.C(clk_IBUF_BUFG),
        .CE(SDI_i_1_n_0),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(SDI_i_2_n_0),
        .Q(SDI_OBUF));
  LUT2 #(
    .INIT(4'h2)) 
    \bit_edge_cnt[0]_i_1 
       (.I0(state[1]),
        .I1(\bit_edge_cnt_reg_n_0_[0] ),
        .O(\bit_edge_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \bit_edge_cnt[1]_i_1 
       (.I0(\bit_edge_cnt_reg_n_0_[0] ),
        .I1(\bit_edge_cnt_reg_n_0_[1] ),
        .I2(state[1]),
        .O(\bit_edge_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \bit_edge_cnt[2]_i_1 
       (.I0(\bit_edge_cnt_reg_n_0_[0] ),
        .I1(\bit_edge_cnt_reg_n_0_[1] ),
        .I2(\bit_edge_cnt_reg_n_0_[2] ),
        .I3(state[1]),
        .O(\bit_edge_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \bit_edge_cnt[3]_i_1 
       (.I0(\bit_edge_cnt_reg_n_0_[2] ),
        .I1(\bit_edge_cnt_reg_n_0_[0] ),
        .I2(\bit_edge_cnt_reg_n_0_[1] ),
        .I3(\bit_edge_cnt_reg_n_0_[3] ),
        .I4(state[1]),
        .O(\bit_edge_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \bit_edge_cnt[4]_i_1 
       (.I0(\bit_edge_cnt_reg_n_0_[3] ),
        .I1(\bit_edge_cnt_reg_n_0_[1] ),
        .I2(\bit_edge_cnt_reg_n_0_[0] ),
        .I3(\bit_edge_cnt_reg_n_0_[2] ),
        .I4(\bit_edge_cnt_reg_n_0_[4] ),
        .I5(state[1]),
        .O(\bit_edge_cnt[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bit_edge_cnt[5]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\bit_edge_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \bit_edge_cnt[5]_i_2 
       (.I0(\bit_edge_cnt_reg_n_0_[4] ),
        .I1(\bit_edge_cnt_reg_n_0_[2] ),
        .I2(\bit_edge_cnt[5]_i_3_n_0 ),
        .I3(\bit_edge_cnt_reg_n_0_[3] ),
        .I4(\bit_edge_cnt_reg_n_0_[5] ),
        .I5(state[1]),
        .O(\bit_edge_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_edge_cnt[5]_i_3 
       (.I0(\bit_edge_cnt_reg_n_0_[0] ),
        .I1(\bit_edge_cnt_reg_n_0_[1] ),
        .O(\bit_edge_cnt[5]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_edge_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_edge_cnt[5]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bit_edge_cnt[0]_i_1_n_0 ),
        .Q(\bit_edge_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_edge_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_edge_cnt[5]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bit_edge_cnt[1]_i_1_n_0 ),
        .Q(\bit_edge_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_edge_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_edge_cnt[5]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bit_edge_cnt[2]_i_1_n_0 ),
        .Q(\bit_edge_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_edge_cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_edge_cnt[5]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bit_edge_cnt[3]_i_1_n_0 ),
        .Q(\bit_edge_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_edge_cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_edge_cnt[5]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bit_edge_cnt[4]_i_1_n_0 ),
        .Q(\bit_edge_cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_edge_cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_edge_cnt[5]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\bit_edge_cnt[5]_i_2_n_0 ),
        .Q(\bit_edge_cnt_reg_n_0_[5] ));
  OBUF busy_OBUF_inst
       (.I(busy_OBUF),
        .O(busy));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    busy_OBUF_inst_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .O(busy_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCCCCA288)) 
    \ch_cnt[0]_i_1 
       (.I0(state[1]),
        .I1(\ch_cnt_reg_n_0_[0] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(state[0]),
        .O(\ch_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0F0A8A0)) 
    \ch_cnt[1]_i_1 
       (.I0(state[1]),
        .I1(\ch_cnt_reg_n_0_[0] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(state[0]),
        .O(\ch_cnt[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ch_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\ch_cnt[0]_i_1_n_0 ),
        .Q(\ch_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \ch_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(\ch_cnt[1]_i_1_n_0 ),
        .Q(\ch_cnt_reg_n_0_[1] ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT4 #(
    .INIT(16'h0040)) 
    \data_buf[63]_i_1 
       (.I0(state[1]),
        .I1(s_axis_tready_OBUF),
        .I2(s_axis_tvalid_IBUF),
        .I3(state[0]),
        .O(data_buf));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[0]),
        .Q(\data_buf_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[10]),
        .Q(\data_buf_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[11]),
        .Q(\data_buf_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[12]),
        .Q(\data_buf_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[13]),
        .Q(\data_buf_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[14]),
        .Q(\data_buf_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[15]),
        .Q(\data_buf_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[16]),
        .Q(\data_buf_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[17]),
        .Q(\data_buf_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[18]),
        .Q(\data_buf_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[19]),
        .Q(\data_buf_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[1]),
        .Q(\data_buf_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[20]),
        .Q(\data_buf_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[21]),
        .Q(\data_buf_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[22]),
        .Q(\data_buf_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[23]),
        .Q(\data_buf_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[24]),
        .Q(\data_buf_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[25]),
        .Q(\data_buf_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[26]),
        .Q(\data_buf_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[27]),
        .Q(\data_buf_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[28]),
        .Q(\data_buf_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[29]),
        .Q(\data_buf_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[2]),
        .Q(\data_buf_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[30]),
        .Q(\data_buf_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[31]),
        .Q(\data_buf_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[32]),
        .Q(\data_buf_reg_n_0_[32] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[33]),
        .Q(\data_buf_reg_n_0_[33] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[34]),
        .Q(\data_buf_reg_n_0_[34] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[35]),
        .Q(\data_buf_reg_n_0_[35] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[36]),
        .Q(\data_buf_reg_n_0_[36] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[37]),
        .Q(\data_buf_reg_n_0_[37] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[38]),
        .Q(\data_buf_reg_n_0_[38] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[39]),
        .Q(\data_buf_reg_n_0_[39] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[3]),
        .Q(\data_buf_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[40]),
        .Q(\data_buf_reg_n_0_[40] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[41]),
        .Q(\data_buf_reg_n_0_[41] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[42]),
        .Q(\data_buf_reg_n_0_[42] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[43]),
        .Q(\data_buf_reg_n_0_[43] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[44]),
        .Q(\data_buf_reg_n_0_[44] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[45]),
        .Q(\data_buf_reg_n_0_[45] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[46]),
        .Q(\data_buf_reg_n_0_[46] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[47]),
        .Q(\data_buf_reg_n_0_[47] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[48]),
        .Q(\data_buf_reg_n_0_[48] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[49]),
        .Q(\data_buf_reg_n_0_[49] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[4]),
        .Q(\data_buf_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[50]),
        .Q(\data_buf_reg_n_0_[50] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[51]),
        .Q(\data_buf_reg_n_0_[51] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[52]),
        .Q(\data_buf_reg_n_0_[52] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[53]),
        .Q(\data_buf_reg_n_0_[53] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[54]),
        .Q(\data_buf_reg_n_0_[54] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[55]),
        .Q(\data_buf_reg_n_0_[55] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[56]),
        .Q(\data_buf_reg_n_0_[56] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[57]),
        .Q(\data_buf_reg_n_0_[57] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[58]),
        .Q(\data_buf_reg_n_0_[58] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[59]),
        .Q(\data_buf_reg_n_0_[59] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[5]),
        .Q(\data_buf_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[60]),
        .Q(\data_buf_reg_n_0_[60] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[61]),
        .Q(\data_buf_reg_n_0_[61] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[62]),
        .Q(\data_buf_reg_n_0_[62] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[63]),
        .Q(\data_buf_reg_n_0_[63] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[6]),
        .Q(\data_buf_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[7]),
        .Q(\data_buf_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[8]),
        .Q(\data_buf_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buf_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buf),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(s_axis_tdata_IBUF[9]),
        .Q(\data_buf_reg_n_0_[9] ));
  OBUF finished_OBUF_inst
       (.I(finished_OBUF),
        .O(finished));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    finished_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .O(finished_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    finished_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(finished_i_1_n_0),
        .Q(finished_OBUF));
  IBUF reset_n_IBUF_inst
       (.I(reset_n),
        .O(reset_n_IBUF));
  IBUF \s_axis_tdata_IBUF[0]_inst 
       (.I(s_axis_tdata[0]),
        .O(s_axis_tdata_IBUF[0]));
  IBUF \s_axis_tdata_IBUF[10]_inst 
       (.I(s_axis_tdata[10]),
        .O(s_axis_tdata_IBUF[10]));
  IBUF \s_axis_tdata_IBUF[11]_inst 
       (.I(s_axis_tdata[11]),
        .O(s_axis_tdata_IBUF[11]));
  IBUF \s_axis_tdata_IBUF[12]_inst 
       (.I(s_axis_tdata[12]),
        .O(s_axis_tdata_IBUF[12]));
  IBUF \s_axis_tdata_IBUF[13]_inst 
       (.I(s_axis_tdata[13]),
        .O(s_axis_tdata_IBUF[13]));
  IBUF \s_axis_tdata_IBUF[14]_inst 
       (.I(s_axis_tdata[14]),
        .O(s_axis_tdata_IBUF[14]));
  IBUF \s_axis_tdata_IBUF[15]_inst 
       (.I(s_axis_tdata[15]),
        .O(s_axis_tdata_IBUF[15]));
  IBUF \s_axis_tdata_IBUF[16]_inst 
       (.I(s_axis_tdata[16]),
        .O(s_axis_tdata_IBUF[16]));
  IBUF \s_axis_tdata_IBUF[17]_inst 
       (.I(s_axis_tdata[17]),
        .O(s_axis_tdata_IBUF[17]));
  IBUF \s_axis_tdata_IBUF[18]_inst 
       (.I(s_axis_tdata[18]),
        .O(s_axis_tdata_IBUF[18]));
  IBUF \s_axis_tdata_IBUF[19]_inst 
       (.I(s_axis_tdata[19]),
        .O(s_axis_tdata_IBUF[19]));
  IBUF \s_axis_tdata_IBUF[1]_inst 
       (.I(s_axis_tdata[1]),
        .O(s_axis_tdata_IBUF[1]));
  IBUF \s_axis_tdata_IBUF[20]_inst 
       (.I(s_axis_tdata[20]),
        .O(s_axis_tdata_IBUF[20]));
  IBUF \s_axis_tdata_IBUF[21]_inst 
       (.I(s_axis_tdata[21]),
        .O(s_axis_tdata_IBUF[21]));
  IBUF \s_axis_tdata_IBUF[22]_inst 
       (.I(s_axis_tdata[22]),
        .O(s_axis_tdata_IBUF[22]));
  IBUF \s_axis_tdata_IBUF[23]_inst 
       (.I(s_axis_tdata[23]),
        .O(s_axis_tdata_IBUF[23]));
  IBUF \s_axis_tdata_IBUF[24]_inst 
       (.I(s_axis_tdata[24]),
        .O(s_axis_tdata_IBUF[24]));
  IBUF \s_axis_tdata_IBUF[25]_inst 
       (.I(s_axis_tdata[25]),
        .O(s_axis_tdata_IBUF[25]));
  IBUF \s_axis_tdata_IBUF[26]_inst 
       (.I(s_axis_tdata[26]),
        .O(s_axis_tdata_IBUF[26]));
  IBUF \s_axis_tdata_IBUF[27]_inst 
       (.I(s_axis_tdata[27]),
        .O(s_axis_tdata_IBUF[27]));
  IBUF \s_axis_tdata_IBUF[28]_inst 
       (.I(s_axis_tdata[28]),
        .O(s_axis_tdata_IBUF[28]));
  IBUF \s_axis_tdata_IBUF[29]_inst 
       (.I(s_axis_tdata[29]),
        .O(s_axis_tdata_IBUF[29]));
  IBUF \s_axis_tdata_IBUF[2]_inst 
       (.I(s_axis_tdata[2]),
        .O(s_axis_tdata_IBUF[2]));
  IBUF \s_axis_tdata_IBUF[30]_inst 
       (.I(s_axis_tdata[30]),
        .O(s_axis_tdata_IBUF[30]));
  IBUF \s_axis_tdata_IBUF[31]_inst 
       (.I(s_axis_tdata[31]),
        .O(s_axis_tdata_IBUF[31]));
  IBUF \s_axis_tdata_IBUF[32]_inst 
       (.I(s_axis_tdata[32]),
        .O(s_axis_tdata_IBUF[32]));
  IBUF \s_axis_tdata_IBUF[33]_inst 
       (.I(s_axis_tdata[33]),
        .O(s_axis_tdata_IBUF[33]));
  IBUF \s_axis_tdata_IBUF[34]_inst 
       (.I(s_axis_tdata[34]),
        .O(s_axis_tdata_IBUF[34]));
  IBUF \s_axis_tdata_IBUF[35]_inst 
       (.I(s_axis_tdata[35]),
        .O(s_axis_tdata_IBUF[35]));
  IBUF \s_axis_tdata_IBUF[36]_inst 
       (.I(s_axis_tdata[36]),
        .O(s_axis_tdata_IBUF[36]));
  IBUF \s_axis_tdata_IBUF[37]_inst 
       (.I(s_axis_tdata[37]),
        .O(s_axis_tdata_IBUF[37]));
  IBUF \s_axis_tdata_IBUF[38]_inst 
       (.I(s_axis_tdata[38]),
        .O(s_axis_tdata_IBUF[38]));
  IBUF \s_axis_tdata_IBUF[39]_inst 
       (.I(s_axis_tdata[39]),
        .O(s_axis_tdata_IBUF[39]));
  IBUF \s_axis_tdata_IBUF[3]_inst 
       (.I(s_axis_tdata[3]),
        .O(s_axis_tdata_IBUF[3]));
  IBUF \s_axis_tdata_IBUF[40]_inst 
       (.I(s_axis_tdata[40]),
        .O(s_axis_tdata_IBUF[40]));
  IBUF \s_axis_tdata_IBUF[41]_inst 
       (.I(s_axis_tdata[41]),
        .O(s_axis_tdata_IBUF[41]));
  IBUF \s_axis_tdata_IBUF[42]_inst 
       (.I(s_axis_tdata[42]),
        .O(s_axis_tdata_IBUF[42]));
  IBUF \s_axis_tdata_IBUF[43]_inst 
       (.I(s_axis_tdata[43]),
        .O(s_axis_tdata_IBUF[43]));
  IBUF \s_axis_tdata_IBUF[44]_inst 
       (.I(s_axis_tdata[44]),
        .O(s_axis_tdata_IBUF[44]));
  IBUF \s_axis_tdata_IBUF[45]_inst 
       (.I(s_axis_tdata[45]),
        .O(s_axis_tdata_IBUF[45]));
  IBUF \s_axis_tdata_IBUF[46]_inst 
       (.I(s_axis_tdata[46]),
        .O(s_axis_tdata_IBUF[46]));
  IBUF \s_axis_tdata_IBUF[47]_inst 
       (.I(s_axis_tdata[47]),
        .O(s_axis_tdata_IBUF[47]));
  IBUF \s_axis_tdata_IBUF[48]_inst 
       (.I(s_axis_tdata[48]),
        .O(s_axis_tdata_IBUF[48]));
  IBUF \s_axis_tdata_IBUF[49]_inst 
       (.I(s_axis_tdata[49]),
        .O(s_axis_tdata_IBUF[49]));
  IBUF \s_axis_tdata_IBUF[4]_inst 
       (.I(s_axis_tdata[4]),
        .O(s_axis_tdata_IBUF[4]));
  IBUF \s_axis_tdata_IBUF[50]_inst 
       (.I(s_axis_tdata[50]),
        .O(s_axis_tdata_IBUF[50]));
  IBUF \s_axis_tdata_IBUF[51]_inst 
       (.I(s_axis_tdata[51]),
        .O(s_axis_tdata_IBUF[51]));
  IBUF \s_axis_tdata_IBUF[52]_inst 
       (.I(s_axis_tdata[52]),
        .O(s_axis_tdata_IBUF[52]));
  IBUF \s_axis_tdata_IBUF[53]_inst 
       (.I(s_axis_tdata[53]),
        .O(s_axis_tdata_IBUF[53]));
  IBUF \s_axis_tdata_IBUF[54]_inst 
       (.I(s_axis_tdata[54]),
        .O(s_axis_tdata_IBUF[54]));
  IBUF \s_axis_tdata_IBUF[55]_inst 
       (.I(s_axis_tdata[55]),
        .O(s_axis_tdata_IBUF[55]));
  IBUF \s_axis_tdata_IBUF[56]_inst 
       (.I(s_axis_tdata[56]),
        .O(s_axis_tdata_IBUF[56]));
  IBUF \s_axis_tdata_IBUF[57]_inst 
       (.I(s_axis_tdata[57]),
        .O(s_axis_tdata_IBUF[57]));
  IBUF \s_axis_tdata_IBUF[58]_inst 
       (.I(s_axis_tdata[58]),
        .O(s_axis_tdata_IBUF[58]));
  IBUF \s_axis_tdata_IBUF[59]_inst 
       (.I(s_axis_tdata[59]),
        .O(s_axis_tdata_IBUF[59]));
  IBUF \s_axis_tdata_IBUF[5]_inst 
       (.I(s_axis_tdata[5]),
        .O(s_axis_tdata_IBUF[5]));
  IBUF \s_axis_tdata_IBUF[60]_inst 
       (.I(s_axis_tdata[60]),
        .O(s_axis_tdata_IBUF[60]));
  IBUF \s_axis_tdata_IBUF[61]_inst 
       (.I(s_axis_tdata[61]),
        .O(s_axis_tdata_IBUF[61]));
  IBUF \s_axis_tdata_IBUF[62]_inst 
       (.I(s_axis_tdata[62]),
        .O(s_axis_tdata_IBUF[62]));
  IBUF \s_axis_tdata_IBUF[63]_inst 
       (.I(s_axis_tdata[63]),
        .O(s_axis_tdata_IBUF[63]));
  IBUF \s_axis_tdata_IBUF[6]_inst 
       (.I(s_axis_tdata[6]),
        .O(s_axis_tdata_IBUF[6]));
  IBUF \s_axis_tdata_IBUF[7]_inst 
       (.I(s_axis_tdata[7]),
        .O(s_axis_tdata_IBUF[7]));
  IBUF \s_axis_tdata_IBUF[8]_inst 
       (.I(s_axis_tdata[8]),
        .O(s_axis_tdata_IBUF[8]));
  IBUF \s_axis_tdata_IBUF[9]_inst 
       (.I(s_axis_tdata[9]),
        .O(s_axis_tdata_IBUF[9]));
  OBUF s_axis_tready_OBUF_inst
       (.I(s_axis_tready_OBUF),
        .O(s_axis_tready));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFDC3)) 
    s_axis_tready_i_1
       (.I0(s_axis_tvalid_IBUF),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axis_tready_OBUF),
        .O(s_axis_tready_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    s_axis_tready_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axis_tready_i_1_n_0),
        .PRE(\FSM_sequential_state[1]_i_2_n_0 ),
        .Q(s_axis_tready_OBUF));
  IBUF s_axis_tvalid_IBUF_inst
       (.I(s_axis_tvalid),
        .O(s_axis_tvalid_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[10]_i_1 
       (.I0(\shreg_reg_n_0_[9] ),
        .I1(state[1]),
        .I2(\shreg[10]_i_2_n_0 ),
        .O(shreg0_in[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[10]_i_2 
       (.I0(\data_buf_reg_n_0_[56] ),
        .I1(\data_buf_reg_n_0_[40] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[24] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[8] ),
        .O(\shreg[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[11]_i_1 
       (.I0(\shreg_reg_n_0_[10] ),
        .I1(state[1]),
        .I2(\shreg[11]_i_2_n_0 ),
        .O(shreg0_in[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[11]_i_2 
       (.I0(\data_buf_reg_n_0_[57] ),
        .I1(\data_buf_reg_n_0_[41] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[25] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[9] ),
        .O(\shreg[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[12]_i_1 
       (.I0(\shreg_reg_n_0_[11] ),
        .I1(state[1]),
        .I2(\shreg[12]_i_2_n_0 ),
        .O(shreg0_in[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[12]_i_2 
       (.I0(\data_buf_reg_n_0_[58] ),
        .I1(\data_buf_reg_n_0_[42] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[26] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[10] ),
        .O(\shreg[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[13]_i_1 
       (.I0(\shreg_reg_n_0_[12] ),
        .I1(state[1]),
        .I2(\shreg[13]_i_2_n_0 ),
        .O(shreg0_in[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[13]_i_2 
       (.I0(\data_buf_reg_n_0_[59] ),
        .I1(\data_buf_reg_n_0_[43] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[27] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[11] ),
        .O(\shreg[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[14]_i_1 
       (.I0(\shreg_reg_n_0_[13] ),
        .I1(state[1]),
        .I2(\shreg[14]_i_2_n_0 ),
        .O(shreg0_in[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[14]_i_2 
       (.I0(\data_buf_reg_n_0_[60] ),
        .I1(\data_buf_reg_n_0_[44] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[28] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[12] ),
        .O(\shreg[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[15]_i_1 
       (.I0(\shreg_reg_n_0_[14] ),
        .I1(state[1]),
        .I2(\shreg[15]_i_2_n_0 ),
        .O(shreg0_in[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[15]_i_2 
       (.I0(\data_buf_reg_n_0_[61] ),
        .I1(\data_buf_reg_n_0_[45] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[29] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[13] ),
        .O(\shreg[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[16]_i_1 
       (.I0(\shreg_reg_n_0_[15] ),
        .I1(state[1]),
        .I2(\shreg[16]_i_2_n_0 ),
        .O(shreg0_in[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[16]_i_2 
       (.I0(\data_buf_reg_n_0_[62] ),
        .I1(\data_buf_reg_n_0_[46] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[30] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[14] ),
        .O(\shreg[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[17]_i_1 
       (.I0(\shreg_reg_n_0_[16] ),
        .I1(state[1]),
        .I2(\shreg[17]_i_2_n_0 ),
        .O(shreg0_in[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[17]_i_2 
       (.I0(\data_buf_reg_n_0_[63] ),
        .I1(\data_buf_reg_n_0_[47] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[31] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[15] ),
        .O(\shreg[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shreg[18]_i_1 
       (.I0(\shreg_reg_n_0_[17] ),
        .I1(state[1]),
        .O(shreg0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[19]_i_1 
       (.I0(\shreg_reg_n_0_[18] ),
        .I1(state[1]),
        .I2(\ch_cnt_reg_n_0_[0] ),
        .O(shreg0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[20]_i_1 
       (.I0(\shreg_reg_n_0_[19] ),
        .I1(state[1]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .O(shreg0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shreg[21]_i_1 
       (.I0(\shreg_reg_n_0_[20] ),
        .I1(state[1]),
        .O(shreg0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \shreg[22]_i_1 
       (.I0(\shreg_reg_n_0_[21] ),
        .I1(state[1]),
        .O(shreg0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shreg[23]_i_1 
       (.I0(\shreg_reg_n_0_[22] ),
        .I1(state[1]),
        .O(shreg0_in[23]));
  LUT3 #(
    .INIT(8'h26)) 
    \shreg[24]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(SCK_OBUF),
        .O(shreg));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shreg[24]_i_2 
       (.I0(\shreg_reg_n_0_[23] ),
        .I1(state[1]),
        .O(shreg0_in[24]));
  LUT2 #(
    .INIT(4'h2)) 
    \shreg[2]_i_1 
       (.I0(\shreg[2]_i_2_n_0 ),
        .I1(state[1]),
        .O(shreg0_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[2]_i_2 
       (.I0(\data_buf_reg_n_0_[48] ),
        .I1(\data_buf_reg_n_0_[32] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[16] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[0] ),
        .O(\shreg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[3]_i_1 
       (.I0(\shreg_reg_n_0_[2] ),
        .I1(state[1]),
        .I2(\shreg[3]_i_2_n_0 ),
        .O(shreg0_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[3]_i_2 
       (.I0(\data_buf_reg_n_0_[49] ),
        .I1(\data_buf_reg_n_0_[33] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[17] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[1] ),
        .O(\shreg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[4]_i_1 
       (.I0(\shreg_reg_n_0_[3] ),
        .I1(state[1]),
        .I2(\shreg[4]_i_2_n_0 ),
        .O(shreg0_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[4]_i_2 
       (.I0(\data_buf_reg_n_0_[50] ),
        .I1(\data_buf_reg_n_0_[34] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[18] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[2] ),
        .O(\shreg[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[5]_i_1 
       (.I0(\shreg_reg_n_0_[4] ),
        .I1(state[1]),
        .I2(\shreg[5]_i_2_n_0 ),
        .O(shreg0_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[5]_i_2 
       (.I0(\data_buf_reg_n_0_[51] ),
        .I1(\data_buf_reg_n_0_[35] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[19] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[3] ),
        .O(\shreg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[6]_i_1 
       (.I0(\shreg_reg_n_0_[5] ),
        .I1(state[1]),
        .I2(\shreg[6]_i_2_n_0 ),
        .O(shreg0_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[6]_i_2 
       (.I0(\data_buf_reg_n_0_[52] ),
        .I1(\data_buf_reg_n_0_[36] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[20] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[4] ),
        .O(\shreg[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[7]_i_1 
       (.I0(\shreg_reg_n_0_[6] ),
        .I1(state[1]),
        .I2(\shreg[7]_i_2_n_0 ),
        .O(shreg0_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[7]_i_2 
       (.I0(\data_buf_reg_n_0_[53] ),
        .I1(\data_buf_reg_n_0_[37] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[21] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[5] ),
        .O(\shreg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[8]_i_1 
       (.I0(\shreg_reg_n_0_[7] ),
        .I1(state[1]),
        .I2(\shreg[8]_i_2_n_0 ),
        .O(shreg0_in[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[8]_i_2 
       (.I0(\data_buf_reg_n_0_[54] ),
        .I1(\data_buf_reg_n_0_[38] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[22] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[6] ),
        .O(\shreg[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shreg[9]_i_1 
       (.I0(\shreg_reg_n_0_[8] ),
        .I1(state[1]),
        .I2(\shreg[9]_i_2_n_0 ),
        .O(shreg0_in[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shreg[9]_i_2 
       (.I0(\data_buf_reg_n_0_[55] ),
        .I1(\data_buf_reg_n_0_[39] ),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(\data_buf_reg_n_0_[23] ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\data_buf_reg_n_0_[7] ),
        .O(\shreg[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[10]),
        .Q(\shreg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[11]),
        .Q(\shreg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[12]),
        .Q(\shreg_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[13]),
        .Q(\shreg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[14]),
        .Q(\shreg_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[15]),
        .Q(\shreg_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[16]),
        .Q(\shreg_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[17]),
        .Q(\shreg_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[18]),
        .Q(\shreg_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[19]),
        .Q(\shreg_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[20]),
        .Q(\shreg_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[21]),
        .Q(\shreg_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[22]),
        .Q(\shreg_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[23]),
        .Q(\shreg_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[24]),
        .Q(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[2]),
        .Q(\shreg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[3]),
        .Q(\shreg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[4]),
        .Q(\shreg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[5]),
        .Q(\shreg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[6]),
        .Q(\shreg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[7]),
        .Q(\shreg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[8]),
        .Q(\shreg_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \shreg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(shreg),
        .CLR(\FSM_sequential_state[1]_i_2_n_0 ),
        .D(shreg0_in[9]),
        .Q(\shreg_reg_n_0_[9] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
