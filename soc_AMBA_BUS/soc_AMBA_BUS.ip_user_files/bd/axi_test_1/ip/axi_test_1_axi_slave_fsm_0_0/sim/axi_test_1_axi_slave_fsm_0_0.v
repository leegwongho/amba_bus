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


// IP VLNV: xilinx.com:module_ref:axi_slave_fsm:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module axi_test_1_axi_slave_fsm_0_0 (
  S_ACLK,
  S_ARRESET_N,
  M_AWVALID,
  M_AWADDR,
  S_AWREADY,
  M_WVALID,
  M_WDATA,
  M_WSTRB,
  S_WREADY,
  M_BREADY,
  S_BRESP,
  S_BVALID,
  M_ARVALID,
  M_ARADDR,
  S_ARREADY,
  M_RREADY,
  M_BLEN,
  S_RVALID,
  S_RDATA
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_ACLK, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_ACLK CLK" *)
input wire S_ACLK;
input wire S_ARRESET_N;
input wire M_AWVALID;
input wire [31 : 0] M_AWADDR;
output wire S_AWREADY;
input wire M_WVALID;
input wire [31 : 0] M_WDATA;
input wire [3 : 0] M_WSTRB;
output wire S_WREADY;
input wire M_BREADY;
output wire [1 : 0] S_BRESP;
output wire S_BVALID;
input wire M_ARVALID;
input wire [31 : 0] M_ARADDR;
output wire S_ARREADY;
input wire M_RREADY;
input wire [3 : 0] M_BLEN;
output wire S_RVALID;
output wire [31 : 0] S_RDATA;

  axi_slave_fsm #(
    .IDLE(9'B000000001),
    .STATE_ARADDR(9'B000000010),
    .STATE_AWADDR(9'B000000100),
    .STATE_WRITE_READY(9'B000010000),
    .STATE_READ(9'B000100000)
  ) inst (
    .S_ACLK(S_ACLK),
    .S_ARRESET_N(S_ARRESET_N),
    .M_AWVALID(M_AWVALID),
    .M_AWADDR(M_AWADDR),
    .S_AWREADY(S_AWREADY),
    .M_WVALID(M_WVALID),
    .M_WDATA(M_WDATA),
    .M_WSTRB(M_WSTRB),
    .S_WREADY(S_WREADY),
    .M_BREADY(M_BREADY),
    .S_BRESP(S_BRESP),
    .S_BVALID(S_BVALID),
    .M_ARVALID(M_ARVALID),
    .M_ARADDR(M_ARADDR),
    .S_ARREADY(S_ARREADY),
    .M_RREADY(M_RREADY),
    .M_BLEN(M_BLEN),
    .S_RVALID(S_RVALID),
    .S_RDATA(S_RDATA)
  );
endmodule
