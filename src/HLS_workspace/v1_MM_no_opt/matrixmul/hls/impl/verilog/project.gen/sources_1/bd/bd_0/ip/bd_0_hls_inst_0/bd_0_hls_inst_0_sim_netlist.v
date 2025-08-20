// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Sat Jul 19 16:49:49 2025
// Host        : jam-Precision-5510 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/v1_MM_no_opt/matrixmul/hls/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,matrixmul,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "matrixmul,Vivado 2024.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module bd_0_hls_inst_0
   (a_ce0,
    b_ce0,
    res_ce0,
    res_we0,
    ap_clk,
    ap_rst,
    ap_done,
    ap_idle,
    ap_ready,
    ap_start,
    a_address0,
    a_q0,
    b_address0,
    b_q0,
    res_address0,
    res_d0);
  output a_ce0;
  output b_ce0;
  output res_ce0;
  output res_we0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_address0, LAYERED_METADATA undef" *) output [3:0]a_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_q0, LAYERED_METADATA undef" *) input [7:0]a_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_address0, LAYERED_METADATA undef" *) output [3:0]b_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_q0, LAYERED_METADATA undef" *) input [7:0]b_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 res_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME res_address0, LAYERED_METADATA undef" *) output [3:0]res_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 res_d0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME res_d0, LAYERED_METADATA undef" *) output [15:0]res_d0;

  wire [3:0]a_address0;
  wire a_ce0;
  wire [7:0]a_q0;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [3:0]b_address0;
  wire b_ce0;
  wire [7:0]b_q0;
  wire [3:0]res_address0;
  wire res_ce0;
  wire [15:0]res_d0;
  wire res_we0;

  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "8'b00000001" *) 
  (* ap_ST_fsm_state2 = "8'b00000010" *) 
  (* ap_ST_fsm_state3 = "8'b00000100" *) 
  (* ap_ST_fsm_state4 = "8'b00001000" *) 
  (* ap_ST_fsm_state5 = "8'b00010000" *) 
  (* ap_ST_fsm_state6 = "8'b00100000" *) 
  (* ap_ST_fsm_state7 = "8'b01000000" *) 
  (* ap_ST_fsm_state8 = "8'b10000000" *) 
  bd_0_hls_inst_0_matrixmul inst
       (.a_address0(a_address0),
        .a_ce0(a_ce0),
        .a_q0(a_q0),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .b_address0(b_address0),
        .b_ce0(b_ce0),
        .b_q0(b_q0),
        .res_address0(res_address0),
        .res_ce0(res_ce0),
        .res_d0(res_d0),
        .res_we0(res_we0));
endmodule

(* ORIG_REF_NAME = "matrixmul" *) (* ap_ST_fsm_state1 = "8'b00000001" *) (* ap_ST_fsm_state2 = "8'b00000010" *) 
(* ap_ST_fsm_state3 = "8'b00000100" *) (* ap_ST_fsm_state4 = "8'b00001000" *) (* ap_ST_fsm_state5 = "8'b00010000" *) 
(* ap_ST_fsm_state6 = "8'b00100000" *) (* ap_ST_fsm_state7 = "8'b01000000" *) (* ap_ST_fsm_state8 = "8'b10000000" *) 
(* hls_module = "yes" *) 
module bd_0_hls_inst_0_matrixmul
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a_address0,
    a_ce0,
    a_q0,
    b_address0,
    b_ce0,
    b_q0,
    res_address0,
    res_ce0,
    res_we0,
    res_d0);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [3:0]a_address0;
  output a_ce0;
  input [7:0]a_q0;
  output [3:0]b_address0;
  output b_ce0;
  input [7:0]b_q0;
  output [3:0]res_address0;
  output res_ce0;
  output res_we0;
  output [15:0]res_d0;

  wire [3:0]a_address0;
  wire [7:0]a_q0;
  wire [0:0]add_ln19_reg_271;
  wire \add_ln19_reg_271[0]_i_1_n_0 ;
  wire [1:0]add_ln21_fu_171_p2;
  wire [1:0]add_ln21_reg_285;
  wire [1:1]add_ln24_fu_201_p2;
  wire [1:0]add_ln24_reg_303;
  wire [3:0]add_ln28_fu_181_p2;
  wire \ap_CS_fsm[4]_i_1_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire \ap_CS_fsm_reg_n_0_[4] ;
  wire \ap_CS_fsm_reg_n_0_[5] ;
  wire \ap_CS_fsm_reg_n_0_[6] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state8;
  wire [3:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm11_out;
  wire ap_clk;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [3:0]b_address0;
  wire [7:0]b_q0;
  wire j_reg_92;
  wire \j_reg_92_reg_n_0_[0] ;
  wire \j_reg_92_reg_n_0_[1] ;
  wire k_reg_103;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_0;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_1;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_10;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_11;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_12;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_13;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_14;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_15;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_16;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_2;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_3;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_4;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_5;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_6;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_7;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_8;
  wire mac_muladd_8s_8s_16ns_16_4_1_U1_n_9;
  wire [0:0]p_0_in;
  wire [3:2]p_shl7_fu_151_p3;
  wire [3:2]p_shl_fu_221_p3;
  wire [3:0]res_address0;
  wire res_ce0;
  wire [15:0]res_d0;
  wire res_we0;
  wire [3:0]sub_ln26_reg_276;
  wire \sub_ln26_reg_276[1]_i_1_n_0 ;
  wire \sub_ln26_reg_276[2]_i_1_n_0 ;
  wire \sub_ln26_reg_276[3]_i_1_n_0 ;
  wire \tmp_reg_114[15]_i_1_n_0 ;
  wire [1:0]zext_ln28_reg_290;

  assign a_ce0 = res_ce0;
  assign ap_done = ap_ready;
  assign b_ce0 = res_ce0;
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_address0[0]_INST_0 
       (.I0(sub_ln26_reg_276[0]),
        .I1(p_shl_fu_221_p3[2]),
        .O(a_address0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \a_address0[1]_INST_0 
       (.I0(sub_ln26_reg_276[0]),
        .I1(p_shl_fu_221_p3[2]),
        .I2(p_shl_fu_221_p3[3]),
        .I3(sub_ln26_reg_276[1]),
        .O(a_address0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h077FF880)) 
    \a_address0[2]_INST_0 
       (.I0(p_shl_fu_221_p3[2]),
        .I1(sub_ln26_reg_276[0]),
        .I2(sub_ln26_reg_276[1]),
        .I3(p_shl_fu_221_p3[3]),
        .I4(sub_ln26_reg_276[2]),
        .O(a_address0[2]));
  LUT6 #(
    .INIT(64'h1777FFFFE8880000)) 
    \a_address0[3]_INST_0 
       (.I0(p_shl_fu_221_p3[3]),
        .I1(sub_ln26_reg_276[1]),
        .I2(sub_ln26_reg_276[0]),
        .I3(p_shl_fu_221_p3[2]),
        .I4(sub_ln26_reg_276[2]),
        .I5(sub_ln26_reg_276[3]),
        .O(a_address0[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln19_reg_271[0]_i_1 
       (.I0(p_shl7_fu_151_p3[2]),
        .O(\add_ln19_reg_271[0]_i_1_n_0 ));
  FDRE \add_ln19_reg_271_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\add_ln19_reg_271[0]_i_1_n_0 ),
        .Q(add_ln19_reg_271),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln21_reg_285[0]_i_1 
       (.I0(\j_reg_92_reg_n_0_[0] ),
        .O(add_ln21_fu_171_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln21_reg_285[1]_i_1 
       (.I0(\j_reg_92_reg_n_0_[0] ),
        .I1(\j_reg_92_reg_n_0_[1] ),
        .O(add_ln21_fu_171_p2[1]));
  FDRE \add_ln21_reg_285_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(add_ln21_fu_171_p2[0]),
        .Q(add_ln21_reg_285[0]),
        .R(1'b0));
  FDRE \add_ln21_reg_285_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(add_ln21_fu_171_p2[1]),
        .Q(add_ln21_reg_285[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln24_reg_303[0]_i_1 
       (.I0(p_shl_fu_221_p3[2]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln24_reg_303[1]_i_1 
       (.I0(p_shl_fu_221_p3[2]),
        .I1(p_shl_fu_221_p3[3]),
        .O(add_ln24_fu_201_p2));
  FDRE \add_ln24_reg_303_reg[0] 
       (.C(ap_clk),
        .CE(res_ce0),
        .D(p_0_in),
        .Q(add_ln24_reg_303[0]),
        .R(1'b0));
  FDRE \add_ln24_reg_303_reg[1] 
       (.C(ap_clk),
        .CE(res_ce0),
        .D(add_ln24_fu_201_p2),
        .Q(add_ln24_reg_303[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF2222222)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .I2(p_shl7_fu_151_p3[3]),
        .I3(p_shl7_fu_151_p3[2]),
        .I4(ap_CS_fsm_state2),
        .O(ap_NS_fsm[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hF8888888)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .I2(ap_CS_fsm_state3),
        .I3(\j_reg_92_reg_n_0_[1] ),
        .I4(\j_reg_92_reg_n_0_[0] ),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hFF70707070707070)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(p_shl7_fu_151_p3[3]),
        .I1(p_shl7_fu_151_p3[2]),
        .I2(ap_CS_fsm_state2),
        .I3(res_ce0),
        .I4(p_shl_fu_221_p3[3]),
        .I5(p_shl_fu_221_p3[2]),
        .O(ap_NS_fsm[2]));
  LUT4 #(
    .INIT(16'hFF2A)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(\j_reg_92_reg_n_0_[1] ),
        .I2(\j_reg_92_reg_n_0_[0] ),
        .I3(ap_CS_fsm_state8),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(p_shl_fu_221_p3[2]),
        .I1(p_shl_fu_221_p3[3]),
        .I2(res_ce0),
        .O(\ap_CS_fsm[4]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(res_ce0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[4]_i_1_n_0 ),
        .Q(\ap_CS_fsm_reg_n_0_[4] ),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[4] ),
        .Q(\ap_CS_fsm_reg_n_0_[5] ),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[5] ),
        .Q(\ap_CS_fsm_reg_n_0_[6] ),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[6] ),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ap_ready_INST_0
       (.I0(p_shl7_fu_151_p3[3]),
        .I1(p_shl7_fu_151_p3[2]),
        .I2(ap_CS_fsm_state2),
        .O(ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_address0[0]_INST_0 
       (.I0(zext_ln28_reg_290[0]),
        .I1(p_shl_fu_221_p3[2]),
        .O(b_address0[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \b_address0[1]_INST_0 
       (.I0(p_shl_fu_221_p3[2]),
        .I1(zext_ln28_reg_290[0]),
        .I2(p_shl_fu_221_p3[3]),
        .I3(zext_ln28_reg_290[1]),
        .O(b_address0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8E30)) 
    \b_address0[2]_INST_0 
       (.I0(zext_ln28_reg_290[0]),
        .I1(zext_ln28_reg_290[1]),
        .I2(p_shl_fu_221_p3[3]),
        .I3(p_shl_fu_221_p3[2]),
        .O(b_address0[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \b_address0[3]_INST_0 
       (.I0(zext_ln28_reg_290[1]),
        .I1(p_shl_fu_221_p3[2]),
        .I2(p_shl_fu_221_p3[3]),
        .O(b_address0[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \i_fu_50[1]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_NS_fsm11_out));
  LUT3 #(
    .INIT(8'h80)) 
    \i_fu_50[1]_i_2 
       (.I0(ap_CS_fsm_state3),
        .I1(\j_reg_92_reg_n_0_[1] ),
        .I2(\j_reg_92_reg_n_0_[0] ),
        .O(ap_NS_fsm1));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_50_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(add_ln19_reg_271),
        .Q(p_shl7_fu_151_p3[2]),
        .R(ap_NS_fsm11_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_50_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(sub_ln26_reg_276[1]),
        .Q(p_shl7_fu_151_p3[3]),
        .R(ap_NS_fsm11_out));
  LUT6 #(
    .INIT(64'h0070707070707070)) 
    \j_reg_92[1]_i_1 
       (.I0(p_shl7_fu_151_p3[2]),
        .I1(p_shl7_fu_151_p3[3]),
        .I2(ap_CS_fsm_state2),
        .I3(p_shl_fu_221_p3[2]),
        .I4(p_shl_fu_221_p3[3]),
        .I5(res_ce0),
        .O(j_reg_92));
  FDRE \j_reg_92_reg[0] 
       (.C(ap_clk),
        .CE(res_we0),
        .D(add_ln21_reg_285[0]),
        .Q(\j_reg_92_reg_n_0_[0] ),
        .R(j_reg_92));
  FDRE \j_reg_92_reg[1] 
       (.C(ap_clk),
        .CE(res_we0),
        .D(add_ln21_reg_285[1]),
        .Q(\j_reg_92_reg_n_0_[1] ),
        .R(j_reg_92));
  LUT4 #(
    .INIT(16'h0070)) 
    \k_reg_103[1]_i_1 
       (.I0(\j_reg_92_reg_n_0_[0] ),
        .I1(\j_reg_92_reg_n_0_[1] ),
        .I2(ap_CS_fsm_state3),
        .I3(ap_CS_fsm_state8),
        .O(k_reg_103));
  FDRE \k_reg_103_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(add_ln24_reg_303[0]),
        .Q(p_shl_fu_221_p3[2]),
        .R(k_reg_103));
  FDRE \k_reg_103_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(add_ln24_reg_303[1]),
        .Q(p_shl_fu_221_p3[3]),
        .R(k_reg_103));
  bd_0_hls_inst_0_matrixmul_mac_muladd_8s_8s_16ns_16_4_1 mac_muladd_8s_8s_16ns_16_4_1_U1
       (.P({mac_muladd_8s_8s_16ns_16_4_1_U1_n_0,mac_muladd_8s_8s_16ns_16_4_1_U1_n_1,mac_muladd_8s_8s_16ns_16_4_1_U1_n_2,mac_muladd_8s_8s_16ns_16_4_1_U1_n_3,mac_muladd_8s_8s_16ns_16_4_1_U1_n_4,mac_muladd_8s_8s_16ns_16_4_1_U1_n_5,mac_muladd_8s_8s_16ns_16_4_1_U1_n_6,mac_muladd_8s_8s_16ns_16_4_1_U1_n_7,mac_muladd_8s_8s_16ns_16_4_1_U1_n_8,mac_muladd_8s_8s_16ns_16_4_1_U1_n_9,mac_muladd_8s_8s_16ns_16_4_1_U1_n_10,mac_muladd_8s_8s_16ns_16_4_1_U1_n_11,mac_muladd_8s_8s_16ns_16_4_1_U1_n_12,mac_muladd_8s_8s_16ns_16_4_1_U1_n_13,mac_muladd_8s_8s_16ns_16_4_1_U1_n_14,mac_muladd_8s_8s_16ns_16_4_1_U1_n_15}),
        .Q({ap_CS_fsm_state8,ap_CS_fsm_state3}),
        .a_q0(a_q0),
        .\ap_CS_fsm_reg[7] (mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .ap_clk(ap_clk),
        .b_q0(b_q0),
        .\tmp_reg_114_reg[0] ({\j_reg_92_reg_n_0_[1] ,\j_reg_92_reg_n_0_[0] }));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res_addr_reg_295[0]_i_1 
       (.I0(sub_ln26_reg_276[0]),
        .I1(\j_reg_92_reg_n_0_[0] ),
        .O(add_ln28_fu_181_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \res_addr_reg_295[1]_i_1 
       (.I0(sub_ln26_reg_276[0]),
        .I1(\j_reg_92_reg_n_0_[0] ),
        .I2(\j_reg_92_reg_n_0_[1] ),
        .I3(sub_ln26_reg_276[1]),
        .O(add_ln28_fu_181_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h077FF880)) 
    \res_addr_reg_295[2]_i_1 
       (.I0(\j_reg_92_reg_n_0_[0] ),
        .I1(sub_ln26_reg_276[0]),
        .I2(sub_ln26_reg_276[1]),
        .I3(\j_reg_92_reg_n_0_[1] ),
        .I4(sub_ln26_reg_276[2]),
        .O(add_ln28_fu_181_p2[2]));
  LUT6 #(
    .INIT(64'h1777FFFFE8880000)) 
    \res_addr_reg_295[3]_i_1 
       (.I0(\j_reg_92_reg_n_0_[1] ),
        .I1(sub_ln26_reg_276[1]),
        .I2(sub_ln26_reg_276[0]),
        .I3(\j_reg_92_reg_n_0_[0] ),
        .I4(sub_ln26_reg_276[2]),
        .I5(sub_ln26_reg_276[3]),
        .O(add_ln28_fu_181_p2[3]));
  FDRE \res_addr_reg_295_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(add_ln28_fu_181_p2[0]),
        .Q(res_address0[0]),
        .R(1'b0));
  FDRE \res_addr_reg_295_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(add_ln28_fu_181_p2[1]),
        .Q(res_address0[1]),
        .R(1'b0));
  FDRE \res_addr_reg_295_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(add_ln28_fu_181_p2[2]),
        .Q(res_address0[2]),
        .R(1'b0));
  FDRE \res_addr_reg_295_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(add_ln28_fu_181_p2[3]),
        .Q(res_address0[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    res_we0_INST_0
       (.I0(res_ce0),
        .I1(p_shl_fu_221_p3[3]),
        .I2(p_shl_fu_221_p3[2]),
        .O(res_we0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sub_ln26_reg_276[1]_i_1 
       (.I0(p_shl7_fu_151_p3[2]),
        .I1(p_shl7_fu_151_p3[3]),
        .O(\sub_ln26_reg_276[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sub_ln26_reg_276[2]_i_1 
       (.I0(p_shl7_fu_151_p3[3]),
        .I1(p_shl7_fu_151_p3[2]),
        .O(\sub_ln26_reg_276[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sub_ln26_reg_276[3]_i_1 
       (.I0(p_shl7_fu_151_p3[2]),
        .I1(p_shl7_fu_151_p3[3]),
        .O(\sub_ln26_reg_276[3]_i_1_n_0 ));
  FDRE \sub_ln26_reg_276_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(p_shl7_fu_151_p3[2]),
        .Q(sub_ln26_reg_276[0]),
        .R(1'b0));
  FDRE \sub_ln26_reg_276_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\sub_ln26_reg_276[1]_i_1_n_0 ),
        .Q(sub_ln26_reg_276[1]),
        .R(1'b0));
  FDRE \sub_ln26_reg_276_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\sub_ln26_reg_276[2]_i_1_n_0 ),
        .Q(sub_ln26_reg_276[2]),
        .R(1'b0));
  FDRE \sub_ln26_reg_276_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\sub_ln26_reg_276[3]_i_1_n_0 ),
        .Q(sub_ln26_reg_276[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h002A)) 
    \tmp_reg_114[15]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(\j_reg_92_reg_n_0_[1] ),
        .I2(\j_reg_92_reg_n_0_[0] ),
        .I3(ap_CS_fsm_state8),
        .O(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[0] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_15),
        .Q(res_d0[0]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[10] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_5),
        .Q(res_d0[10]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[11] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_4),
        .Q(res_d0[11]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[12] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_3),
        .Q(res_d0[12]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[13] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_2),
        .Q(res_d0[13]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[14] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_1),
        .Q(res_d0[14]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[15] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_0),
        .Q(res_d0[15]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[1] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_14),
        .Q(res_d0[1]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[2] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_13),
        .Q(res_d0[2]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[3] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_12),
        .Q(res_d0[3]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[4] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_11),
        .Q(res_d0[4]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[5] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_10),
        .Q(res_d0[5]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[6] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_9),
        .Q(res_d0[6]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[7] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_8),
        .Q(res_d0[7]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[8] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_7),
        .Q(res_d0[8]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \tmp_reg_114_reg[9] 
       (.C(ap_clk),
        .CE(mac_muladd_8s_8s_16ns_16_4_1_U1_n_16),
        .D(mac_muladd_8s_8s_16ns_16_4_1_U1_n_6),
        .Q(res_d0[9]),
        .R(\tmp_reg_114[15]_i_1_n_0 ));
  FDRE \zext_ln28_reg_290_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(\j_reg_92_reg_n_0_[0] ),
        .Q(zext_ln28_reg_290[0]),
        .R(1'b0));
  FDRE \zext_ln28_reg_290_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(\j_reg_92_reg_n_0_[1] ),
        .Q(zext_ln28_reg_290[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "matrixmul_mac_muladd_8s_8s_16ns_16_4_1" *) 
module bd_0_hls_inst_0_matrixmul_mac_muladd_8s_8s_16ns_16_4_1
   (P,
    \ap_CS_fsm_reg[7] ,
    ap_clk,
    a_q0,
    b_q0,
    Q,
    \tmp_reg_114_reg[0] );
  output [15:0]P;
  output \ap_CS_fsm_reg[7] ;
  input ap_clk;
  input [7:0]a_q0;
  input [7:0]b_q0;
  input [1:0]Q;
  input [1:0]\tmp_reg_114_reg[0] ;

  wire [15:0]P;
  wire [1:0]Q;
  wire [7:0]a_q0;
  wire \ap_CS_fsm_reg[7] ;
  wire ap_clk;
  wire [7:0]b_q0;
  wire [1:0]\tmp_reg_114_reg[0] ;

  bd_0_hls_inst_0_matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_0 matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_0_U
       (.P(P),
        .Q(Q),
        .a_q0(a_q0),
        .\ap_CS_fsm_reg[7] (\ap_CS_fsm_reg[7] ),
        .ap_clk(ap_clk),
        .b_q0(b_q0),
        .\tmp_reg_114_reg[0] (\tmp_reg_114_reg[0] ));
endmodule

(* ORIG_REF_NAME = "matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_0" *) 
module bd_0_hls_inst_0_matrixmul_mac_muladd_8s_8s_16ns_16_4_1_DSP48_0
   (P,
    \ap_CS_fsm_reg[7] ,
    ap_clk,
    a_q0,
    b_q0,
    Q,
    \tmp_reg_114_reg[0] );
  output [15:0]P;
  output \ap_CS_fsm_reg[7] ;
  input ap_clk;
  input [7:0]a_q0;
  input [7:0]b_q0;
  input [1:0]Q;
  input [1:0]\tmp_reg_114_reg[0] ;

  wire [15:0]P;
  wire [1:0]Q;
  wire [7:0]a_q0;
  wire \ap_CS_fsm_reg[7] ;
  wire ap_clk;
  wire [7:0]b_q0;
  wire p_reg_reg_i_10_n_0;
  wire p_reg_reg_i_11_n_0;
  wire p_reg_reg_i_12_n_0;
  wire p_reg_reg_i_13_n_0;
  wire p_reg_reg_i_14_n_0;
  wire p_reg_reg_i_15_n_0;
  wire p_reg_reg_i_16_n_0;
  wire p_reg_reg_i_1_n_0;
  wire p_reg_reg_i_2_n_0;
  wire p_reg_reg_i_3_n_0;
  wire p_reg_reg_i_4_n_0;
  wire p_reg_reg_i_5_n_0;
  wire p_reg_reg_i_6_n_0;
  wire p_reg_reg_i_7_n_0;
  wire p_reg_reg_i_8_n_0;
  wire p_reg_reg_i_9_n_0;
  wire [1:0]\tmp_reg_114_reg[0] ;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_p_reg_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    p_reg_reg
       (.A({b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0[7],b_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({a_q0[7],a_q0[7],a_q0[7],a_q0[7],a_q0[7],a_q0[7],a_q0[7],a_q0[7],a_q0[7],a_q0[7],a_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_reg_reg_i_1_n_0,p_reg_reg_i_2_n_0,p_reg_reg_i_3_n_0,p_reg_reg_i_4_n_0,p_reg_reg_i_5_n_0,p_reg_reg_i_6_n_0,p_reg_reg_i_7_n_0,p_reg_reg_i_8_n_0,p_reg_reg_i_9_n_0,p_reg_reg_i_10_n_0,p_reg_reg_i_11_n_0,p_reg_reg_i_12_n_0,p_reg_reg_i_13_n_0,p_reg_reg_i_14_n_0,p_reg_reg_i_15_n_0,p_reg_reg_i_16_n_0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(\ap_CS_fsm_reg[7] ),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:16],P}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_p_reg_reg_XOROUT_UNCONNECTED[7:0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_1
       (.I0(Q[1]),
        .I1(P[15]),
        .O(p_reg_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_10
       (.I0(Q[1]),
        .I1(P[6]),
        .O(p_reg_reg_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_11
       (.I0(Q[1]),
        .I1(P[5]),
        .O(p_reg_reg_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_12
       (.I0(Q[1]),
        .I1(P[4]),
        .O(p_reg_reg_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_13
       (.I0(Q[1]),
        .I1(P[3]),
        .O(p_reg_reg_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_14
       (.I0(Q[1]),
        .I1(P[2]),
        .O(p_reg_reg_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_15
       (.I0(Q[1]),
        .I1(P[1]),
        .O(p_reg_reg_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_16
       (.I0(Q[1]),
        .I1(P[0]),
        .O(p_reg_reg_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_2
       (.I0(Q[1]),
        .I1(P[14]),
        .O(p_reg_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_3
       (.I0(Q[1]),
        .I1(P[13]),
        .O(p_reg_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_4
       (.I0(Q[1]),
        .I1(P[12]),
        .O(p_reg_reg_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_5
       (.I0(Q[1]),
        .I1(P[11]),
        .O(p_reg_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_6
       (.I0(Q[1]),
        .I1(P[10]),
        .O(p_reg_reg_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_7
       (.I0(Q[1]),
        .I1(P[9]),
        .O(p_reg_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_8
       (.I0(Q[1]),
        .I1(P[8]),
        .O(p_reg_reg_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_reg_reg_i_9
       (.I0(Q[1]),
        .I1(P[7]),
        .O(p_reg_reg_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    \tmp_reg_114[15]_i_2 
       (.I0(Q[1]),
        .I1(\tmp_reg_114_reg[0] [0]),
        .I2(\tmp_reg_114_reg[0] [1]),
        .I3(Q[0]),
        .O(\ap_CS_fsm_reg[7] ));
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
