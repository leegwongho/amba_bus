// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:axi_master_fsm:1.0
// IP Revision: 1

(* X_CORE_INFO = "axi_master_fsm,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "axi_test_1_axi_master_fsm_0_0,axi_master_fsm,{}" *)
(* CORE_GENERATION_INFO = "axi_test_1_axi_master_fsm_0_0,axi_master_fsm,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axi_master_fsm,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,IDLE=000000001,STATE_ARADDR=000000010,STATE_AWADDR=000000100,STATE_READ_READY=000001000,STATE_WRITE_READY=000010000}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module axi_test_1_axi_master_fsm_0_0 (
  M_ACLK,
  M_ARESET_N,
  S_AWREADY,
  M_AWVALID,
  M_AWADDR,
  S_WREADY,
  M_WVALID,
  M_WDATA,
  M_WSTRB,
  S_BRESP,
  S_BVALID,
  M_BREADY,
  S_ARREADY,
  M_ARVALID,
  M_ARADDR,
  S_RDATA,
  S_RVALID,
  M_BLEN,
  M_RREADY,
  U_WVALID,
  U_AWADDR,
  U_WDATA,
  U_STRB,
  U_RVALID,
  U_ARADDR,
  U_BLEN,
  U_RDATA
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_ACLK, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_ACLK CLK" *)
input wire M_ACLK;
input wire M_ARESET_N;
input wire S_AWREADY;
output wire M_AWVALID;
output wire [31 : 0] M_AWADDR;
input wire S_WREADY;
output wire M_WVALID;
output wire [31 : 0] M_WDATA;
output wire [3 : 0] M_WSTRB;
input wire [1 : 0] S_BRESP;
input wire S_BVALID;
output wire M_BREADY;
input wire S_ARREADY;
output wire M_ARVALID;
output wire [31 : 0] M_ARADDR;
input wire [31 : 0] S_RDATA;
input wire S_RVALID;
output wire [3 : 0] M_BLEN;
output wire M_RREADY;
input wire U_WVALID;
input wire [31 : 0] U_AWADDR;
input wire [31 : 0] U_WDATA;
input wire [3 : 0] U_STRB;
input wire U_RVALID;
input wire [31 : 0] U_ARADDR;
input wire [3 : 0] U_BLEN;
output wire [31 : 0] U_RDATA;

  axi_master_fsm #(
    .IDLE(9'B000000001),
    .STATE_ARADDR(9'B000000010),
    .STATE_AWADDR(9'B000000100),
    .STATE_READ_READY(9'B000001000),
    .STATE_WRITE_READY(9'B000010000)
  ) inst (
    .M_ACLK(M_ACLK),
    .M_ARESET_N(M_ARESET_N),
    .S_AWREADY(S_AWREADY),
    .M_AWVALID(M_AWVALID),
    .M_AWADDR(M_AWADDR),
    .S_WREADY(S_WREADY),
    .M_WVALID(M_WVALID),
    .M_WDATA(M_WDATA),
    .M_WSTRB(M_WSTRB),
    .S_BRESP(S_BRESP),
    .S_BVALID(S_BVALID),
    .M_BREADY(M_BREADY),
    .S_ARREADY(S_ARREADY),
    .M_ARVALID(M_ARVALID),
    .M_ARADDR(M_ARADDR),
    .S_RDATA(S_RDATA),
    .S_RVALID(S_RVALID),
    .M_BLEN(M_BLEN),
    .M_RREADY(M_RREADY),
    .U_WVALID(U_WVALID),
    .U_AWADDR(U_AWADDR),
    .U_WDATA(U_WDATA),
    .U_STRB(U_STRB),
    .U_RVALID(U_RVALID),
    .U_ARADDR(U_ARADDR),
    .U_BLEN(U_BLEN),
    .U_RDATA(U_RDATA)
  );
endmodule
