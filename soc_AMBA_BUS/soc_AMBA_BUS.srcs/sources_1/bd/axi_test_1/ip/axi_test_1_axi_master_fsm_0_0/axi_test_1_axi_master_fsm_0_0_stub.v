// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct  7 20:33:44 2024
// Host        : leegwongho running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/github/amba_bus/soc_AMBA_BUS/soc_AMBA_BUS.srcs/sources_1/bd/axi_test_1/ip/axi_test_1_axi_master_fsm_0_0/axi_test_1_axi_master_fsm_0_0_stub.v
// Design      : axi_test_1_axi_master_fsm_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_master_fsm,Vivado 2019.2" *)
module axi_test_1_axi_master_fsm_0_0(M_ACLK, M_ARESET_N, S_AWREADY, M_AWVALID, 
  M_AWADDR, S_WREADY, M_WVALID, M_WDATA, M_WSTRB, S_BRESP, S_BVALID, M_BREADY, S_ARREADY, M_ARVALID, 
  M_ARADDR, S_RDATA, S_RVALID, M_BLEN, M_RREADY, U_WVALID, U_AWADDR, U_WDATA, U_STRB, U_RVALID, 
  U_ARADDR, U_BLEN, U_RDATA)
/* synthesis syn_black_box black_box_pad_pin="M_ACLK,M_ARESET_N,S_AWREADY,M_AWVALID,M_AWADDR[31:0],S_WREADY,M_WVALID,M_WDATA[31:0],M_WSTRB[3:0],S_BRESP[1:0],S_BVALID,M_BREADY,S_ARREADY,M_ARVALID,M_ARADDR[31:0],S_RDATA[31:0],S_RVALID,M_BLEN[3:0],M_RREADY,U_WVALID,U_AWADDR[31:0],U_WDATA[31:0],U_STRB[3:0],U_RVALID,U_ARADDR[31:0],U_BLEN[3:0],U_RDATA[31:0]" */;
  input M_ACLK;
  input M_ARESET_N;
  input S_AWREADY;
  output M_AWVALID;
  output [31:0]M_AWADDR;
  input S_WREADY;
  output M_WVALID;
  output [31:0]M_WDATA;
  output [3:0]M_WSTRB;
  input [1:0]S_BRESP;
  input S_BVALID;
  output M_BREADY;
  input S_ARREADY;
  output M_ARVALID;
  output [31:0]M_ARADDR;
  input [31:0]S_RDATA;
  input S_RVALID;
  output [3:0]M_BLEN;
  output M_RREADY;
  input U_WVALID;
  input [31:0]U_AWADDR;
  input [31:0]U_WDATA;
  input [3:0]U_STRB;
  input U_RVALID;
  input [31:0]U_ARADDR;
  input [3:0]U_BLEN;
  output [31:0]U_RDATA;
endmodule
