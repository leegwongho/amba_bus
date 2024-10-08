// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct  7 20:33:49 2024
// Host        : leegwongho running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axi_test_1_axi_slave_fsm_0_0_stub.v
// Design      : axi_test_1_axi_slave_fsm_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_slave_fsm,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(S_ACLK, S_ARRESET_N, M_AWVALID, M_AWADDR, 
  S_AWREADY, M_WVALID, M_WDATA, M_WSTRB, S_WREADY, M_BREADY, S_BRESP, S_BVALID, M_ARVALID, M_ARADDR, 
  S_ARREADY, M_RREADY, M_BLEN, S_RVALID, S_RDATA)
/* synthesis syn_black_box black_box_pad_pin="S_ACLK,S_ARRESET_N,M_AWVALID,M_AWADDR[31:0],S_AWREADY,M_WVALID,M_WDATA[31:0],M_WSTRB[3:0],S_WREADY,M_BREADY,S_BRESP[1:0],S_BVALID,M_ARVALID,M_ARADDR[31:0],S_ARREADY,M_RREADY,M_BLEN[3:0],S_RVALID,S_RDATA[31:0]" */;
  input S_ACLK;
  input S_ARRESET_N;
  input M_AWVALID;
  input [31:0]M_AWADDR;
  output S_AWREADY;
  input M_WVALID;
  input [31:0]M_WDATA;
  input [3:0]M_WSTRB;
  output S_WREADY;
  input M_BREADY;
  output [1:0]S_BRESP;
  output S_BVALID;
  input M_ARVALID;
  input [31:0]M_ARADDR;
  output S_ARREADY;
  input M_RREADY;
  input [3:0]M_BLEN;
  output S_RVALID;
  output [31:0]S_RDATA;
endmodule
