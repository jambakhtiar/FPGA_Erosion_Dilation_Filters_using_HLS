// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Sat Jul 19 16:49:47 2025
// Host        : jam-Precision-5510 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "matrixmul,Vivado 2024.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(a_ce0, b_ce0, res_ce0, res_we0, ap_clk, ap_rst, 
  ap_done, ap_idle, ap_ready, ap_start, a_address0, a_q0, b_address0, b_q0, res_address0, res_d0)
/* synthesis syn_black_box black_box_pad_pin="a_ce0,b_ce0,res_ce0,res_we0,ap_rst,ap_done,ap_idle,ap_ready,ap_start,a_address0[3:0],a_q0[7:0],b_address0[3:0],b_q0[7:0],res_address0[3:0],res_d0[15:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  output a_ce0;
  output b_ce0;
  output res_ce0;
  output res_we0;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input ap_start;
  output [3:0]a_address0;
  input [7:0]a_q0;
  output [3:0]b_address0;
  input [7:0]b_q0;
  output [3:0]res_address0;
  output [15:0]res_d0;
endmodule
