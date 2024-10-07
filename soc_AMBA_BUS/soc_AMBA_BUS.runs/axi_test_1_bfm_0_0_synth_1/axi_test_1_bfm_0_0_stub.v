// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct  7 20:33:41 2024
// Host        : leegwongho running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axi_test_1_bfm_0_0_stub.v
// Design      : axi_test_1_bfm_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bfm,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, U_RDATA, sw, U_WVALID, U_AWADDR, U_WDATA, 
  U_STRB, U_RVALID, U_ARADDR, U_BLEN, led)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,U_RDATA[31:0],sw[15:0],U_WVALID,U_AWADDR[31:0],U_WDATA[31:0],U_STRB[3:0],U_RVALID,U_ARADDR[31:0],U_BLEN[3:0],led[14:0]" */;
  input clk;
  input reset;
  input [31:0]U_RDATA;
  input [15:0]sw;
  output U_WVALID;
  output [31:0]U_AWADDR;
  output [31:0]U_WDATA;
  output [3:0]U_STRB;
  output U_RVALID;
  output [31:0]U_ARADDR;
  output [3:0]U_BLEN;
  output [14:0]led;
endmodule
