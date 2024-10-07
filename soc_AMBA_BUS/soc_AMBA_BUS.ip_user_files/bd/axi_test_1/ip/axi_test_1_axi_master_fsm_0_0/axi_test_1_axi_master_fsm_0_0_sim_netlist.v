// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct  7 20:23:58 2024
// Host        : leegwongho running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/github/amba_bus/soc_AMBA_BUS/soc_AMBA_BUS.srcs/sources_1/bd/axi_test_1/ip/axi_test_1_axi_master_fsm_0_0/axi_test_1_axi_master_fsm_0_0_sim_netlist.v
// Design      : axi_test_1_axi_master_fsm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_test_1_axi_master_fsm_0_0,axi_master_fsm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_master_fsm,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module axi_test_1_axi_master_fsm_0_0
   (M_ACLK,
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
    U_RDATA);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_ACLK, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input M_ACLK;
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

  wire \<const0> ;
  wire M_ACLK;
  wire [31:0]M_ARADDR;
  wire M_ARESET_N;
  wire [31:0]M_AWADDR;
  wire [3:0]M_BLEN;
  wire [31:0]M_WDATA;
  wire [3:0]M_WSTRB;
  wire S_ARREADY;
  wire S_AWREADY;
  wire [31:0]S_RDATA;
  wire S_RVALID;
  wire S_WREADY;
  wire [31:0]U_ARADDR;
  wire [31:0]U_AWADDR;
  wire [3:0]U_BLEN;
  wire [31:0]U_RDATA;
  wire U_RVALID;
  wire [3:0]U_STRB;
  wire [31:0]U_WDATA;
  wire U_WVALID;

  assign M_ARVALID = \<const0> ;
  assign M_AWVALID = \<const0> ;
  assign M_BREADY = \<const0> ;
  assign M_RREADY = \<const0> ;
  assign M_WVALID = \<const0> ;
  GND GND
       (.G(\<const0> ));
  axi_test_1_axi_master_fsm_0_0_axi_master_fsm inst
       (.M_ACLK(M_ACLK),
        .M_ARADDR(M_ARADDR),
        .M_ARESET_N(M_ARESET_N),
        .M_AWADDR(M_AWADDR),
        .M_BLEN(M_BLEN),
        .M_WDATA(M_WDATA),
        .M_WSTRB(M_WSTRB),
        .S_ARREADY(S_ARREADY),
        .S_AWREADY(S_AWREADY),
        .S_RDATA(S_RDATA),
        .S_RVALID(S_RVALID),
        .S_WREADY(S_WREADY),
        .U_ARADDR(U_ARADDR),
        .U_AWADDR(U_AWADDR),
        .U_BLEN(U_BLEN),
        .U_RDATA(U_RDATA),
        .U_RVALID(U_RVALID),
        .U_STRB(U_STRB),
        .U_WDATA(U_WDATA),
        .U_WVALID(U_WVALID));
endmodule

(* ORIG_REF_NAME = "axi_master_fsm" *) 
module axi_test_1_axi_master_fsm_0_0_axi_master_fsm
   (M_AWADDR,
    M_WDATA,
    M_WSTRB,
    M_ARADDR,
    U_RDATA,
    M_BLEN,
    M_ACLK,
    U_RVALID,
    U_BLEN,
    U_WVALID,
    U_AWADDR,
    U_WDATA,
    U_STRB,
    U_ARADDR,
    S_RDATA,
    S_AWREADY,
    S_RVALID,
    S_WREADY,
    S_ARREADY,
    M_ARESET_N);
  output [31:0]M_AWADDR;
  output [31:0]M_WDATA;
  output [3:0]M_WSTRB;
  output [31:0]M_ARADDR;
  output [31:0]U_RDATA;
  output [3:0]M_BLEN;
  input M_ACLK;
  input U_RVALID;
  input [3:0]U_BLEN;
  input U_WVALID;
  input [31:0]U_AWADDR;
  input [31:0]U_WDATA;
  input [3:0]U_STRB;
  input [31:0]U_ARADDR;
  input [31:0]S_RDATA;
  input S_AWREADY;
  input S_RVALID;
  input S_WREADY;
  input S_ARREADY;
  input M_ARESET_N;

  wire M_ACLK;
  wire [31:0]M_ARADDR;
  wire \M_ARADDR_reg[31]_i_1_n_0 ;
  wire M_ARESET_N;
  wire [31:0]M_AWADDR;
  wire \M_AWADDR_reg[31]_i_1_n_0 ;
  wire [3:0]M_BLEN;
  wire \M_BLEN[3]_INST_0_i_1_n_0 ;
  wire [31:0]M_WDATA;
  wire [3:0]M_WSTRB;
  wire S_ARREADY;
  wire S_AWREADY;
  wire [31:0]S_RDATA;
  wire S_RVALID;
  wire S_WREADY;
  wire [31:0]U_ARADDR;
  wire [31:0]U_AWADDR;
  wire [3:0]U_BLEN;
  wire [31:0]U_RDATA;
  wire \U_RDATA_reg[31]_i_1_n_0 ;
  wire U_RVALID;
  wire [3:0]U_STRB;
  wire [31:0]U_WDATA;
  wire U_WVALID;
  wire [31:0]araddr_reg;
  wire [31:0]awaddr_reg;
  wire [3:0]burst_length;
  wire [31:0]read_data_reg;
  wire [4:0]state;
  wire \state[4]_i_1_n_0 ;
  wire \state[4]_i_2_n_0 ;
  wire \state[4]_i_3_n_0 ;
  wire \state[4]_i_4_n_0 ;
  wire \state[4]_i_5_n_0 ;
  wire [2:0]state_next;
  wire [3:0]strb_reg;
  wire [31:0]write_data_reg;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[0] 
       (.CLR(1'b0),
        .D(araddr_reg[0]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[10] 
       (.CLR(1'b0),
        .D(araddr_reg[10]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[11] 
       (.CLR(1'b0),
        .D(araddr_reg[11]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[12] 
       (.CLR(1'b0),
        .D(araddr_reg[12]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[13] 
       (.CLR(1'b0),
        .D(araddr_reg[13]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[14] 
       (.CLR(1'b0),
        .D(araddr_reg[14]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[15] 
       (.CLR(1'b0),
        .D(araddr_reg[15]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[16] 
       (.CLR(1'b0),
        .D(araddr_reg[16]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[17] 
       (.CLR(1'b0),
        .D(araddr_reg[17]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[18] 
       (.CLR(1'b0),
        .D(araddr_reg[18]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[19] 
       (.CLR(1'b0),
        .D(araddr_reg[19]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[1] 
       (.CLR(1'b0),
        .D(araddr_reg[1]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[20] 
       (.CLR(1'b0),
        .D(araddr_reg[20]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[21] 
       (.CLR(1'b0),
        .D(araddr_reg[21]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[22] 
       (.CLR(1'b0),
        .D(araddr_reg[22]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[23] 
       (.CLR(1'b0),
        .D(araddr_reg[23]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[24] 
       (.CLR(1'b0),
        .D(araddr_reg[24]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[25] 
       (.CLR(1'b0),
        .D(araddr_reg[25]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[26] 
       (.CLR(1'b0),
        .D(araddr_reg[26]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[27] 
       (.CLR(1'b0),
        .D(araddr_reg[27]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[28] 
       (.CLR(1'b0),
        .D(araddr_reg[28]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[29] 
       (.CLR(1'b0),
        .D(araddr_reg[29]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[2] 
       (.CLR(1'b0),
        .D(araddr_reg[2]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[30] 
       (.CLR(1'b0),
        .D(araddr_reg[30]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[31] 
       (.CLR(1'b0),
        .D(araddr_reg[31]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[31]));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \M_ARADDR_reg[31]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .I4(U_RVALID),
        .I5(state[4]),
        .O(\M_ARADDR_reg[31]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[3] 
       (.CLR(1'b0),
        .D(araddr_reg[3]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[4] 
       (.CLR(1'b0),
        .D(araddr_reg[4]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[5] 
       (.CLR(1'b0),
        .D(araddr_reg[5]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[6] 
       (.CLR(1'b0),
        .D(araddr_reg[6]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[7] 
       (.CLR(1'b0),
        .D(araddr_reg[7]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[8] 
       (.CLR(1'b0),
        .D(araddr_reg[8]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_ARADDR_reg[9] 
       (.CLR(1'b0),
        .D(araddr_reg[9]),
        .G(\M_ARADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_ARADDR[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[0] 
       (.CLR(1'b0),
        .D(awaddr_reg[0]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[10] 
       (.CLR(1'b0),
        .D(awaddr_reg[10]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[11] 
       (.CLR(1'b0),
        .D(awaddr_reg[11]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[12] 
       (.CLR(1'b0),
        .D(awaddr_reg[12]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[13] 
       (.CLR(1'b0),
        .D(awaddr_reg[13]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[14] 
       (.CLR(1'b0),
        .D(awaddr_reg[14]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[15] 
       (.CLR(1'b0),
        .D(awaddr_reg[15]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[16] 
       (.CLR(1'b0),
        .D(awaddr_reg[16]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[17] 
       (.CLR(1'b0),
        .D(awaddr_reg[17]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[18] 
       (.CLR(1'b0),
        .D(awaddr_reg[18]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[19] 
       (.CLR(1'b0),
        .D(awaddr_reg[19]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[1] 
       (.CLR(1'b0),
        .D(awaddr_reg[1]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[20] 
       (.CLR(1'b0),
        .D(awaddr_reg[20]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[21] 
       (.CLR(1'b0),
        .D(awaddr_reg[21]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[22] 
       (.CLR(1'b0),
        .D(awaddr_reg[22]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[23] 
       (.CLR(1'b0),
        .D(awaddr_reg[23]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[24] 
       (.CLR(1'b0),
        .D(awaddr_reg[24]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[25] 
       (.CLR(1'b0),
        .D(awaddr_reg[25]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[26] 
       (.CLR(1'b0),
        .D(awaddr_reg[26]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[27] 
       (.CLR(1'b0),
        .D(awaddr_reg[27]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[28] 
       (.CLR(1'b0),
        .D(awaddr_reg[28]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[29] 
       (.CLR(1'b0),
        .D(awaddr_reg[29]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[2] 
       (.CLR(1'b0),
        .D(awaddr_reg[2]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[30] 
       (.CLR(1'b0),
        .D(awaddr_reg[30]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[31] 
       (.CLR(1'b0),
        .D(awaddr_reg[31]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[31]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \M_AWADDR_reg[31]_i_1 
       (.I0(state[1]),
        .I1(\M_BLEN[3]_INST_0_i_1_n_0 ),
        .I2(state[0]),
        .I3(U_WVALID),
        .I4(U_RVALID),
        .I5(state[4]),
        .O(\M_AWADDR_reg[31]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[3] 
       (.CLR(1'b0),
        .D(awaddr_reg[3]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[4] 
       (.CLR(1'b0),
        .D(awaddr_reg[4]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[5] 
       (.CLR(1'b0),
        .D(awaddr_reg[5]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[6] 
       (.CLR(1'b0),
        .D(awaddr_reg[6]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[7] 
       (.CLR(1'b0),
        .D(awaddr_reg[7]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[8] 
       (.CLR(1'b0),
        .D(awaddr_reg[8]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_AWADDR_reg[9] 
       (.CLR(1'b0),
        .D(awaddr_reg[9]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_AWADDR[9]));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \M_BLEN[0]_INST_0 
       (.I0(state[1]),
        .I1(\M_BLEN[3]_INST_0_i_1_n_0 ),
        .I2(state[0]),
        .I3(U_RVALID),
        .I4(burst_length[0]),
        .I5(state[4]),
        .O(M_BLEN[0]));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \M_BLEN[1]_INST_0 
       (.I0(state[1]),
        .I1(\M_BLEN[3]_INST_0_i_1_n_0 ),
        .I2(state[0]),
        .I3(U_RVALID),
        .I4(burst_length[1]),
        .I5(state[4]),
        .O(M_BLEN[1]));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \M_BLEN[2]_INST_0 
       (.I0(state[1]),
        .I1(\M_BLEN[3]_INST_0_i_1_n_0 ),
        .I2(state[0]),
        .I3(U_RVALID),
        .I4(burst_length[2]),
        .I5(state[4]),
        .O(M_BLEN[2]));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \M_BLEN[3]_INST_0 
       (.I0(state[1]),
        .I1(\M_BLEN[3]_INST_0_i_1_n_0 ),
        .I2(state[0]),
        .I3(U_RVALID),
        .I4(burst_length[3]),
        .I5(state[4]),
        .O(M_BLEN[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \M_BLEN[3]_INST_0_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .O(\M_BLEN[3]_INST_0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[0] 
       (.CLR(1'b0),
        .D(write_data_reg[0]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[10] 
       (.CLR(1'b0),
        .D(write_data_reg[10]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[11] 
       (.CLR(1'b0),
        .D(write_data_reg[11]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[12] 
       (.CLR(1'b0),
        .D(write_data_reg[12]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[13] 
       (.CLR(1'b0),
        .D(write_data_reg[13]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[14] 
       (.CLR(1'b0),
        .D(write_data_reg[14]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[15] 
       (.CLR(1'b0),
        .D(write_data_reg[15]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[16] 
       (.CLR(1'b0),
        .D(write_data_reg[16]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[17] 
       (.CLR(1'b0),
        .D(write_data_reg[17]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[18] 
       (.CLR(1'b0),
        .D(write_data_reg[18]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[19] 
       (.CLR(1'b0),
        .D(write_data_reg[19]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[1] 
       (.CLR(1'b0),
        .D(write_data_reg[1]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[20] 
       (.CLR(1'b0),
        .D(write_data_reg[20]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[21] 
       (.CLR(1'b0),
        .D(write_data_reg[21]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[22] 
       (.CLR(1'b0),
        .D(write_data_reg[22]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[23] 
       (.CLR(1'b0),
        .D(write_data_reg[23]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[24] 
       (.CLR(1'b0),
        .D(write_data_reg[24]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[25] 
       (.CLR(1'b0),
        .D(write_data_reg[25]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[26] 
       (.CLR(1'b0),
        .D(write_data_reg[26]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[27] 
       (.CLR(1'b0),
        .D(write_data_reg[27]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[28] 
       (.CLR(1'b0),
        .D(write_data_reg[28]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[29] 
       (.CLR(1'b0),
        .D(write_data_reg[29]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[2] 
       (.CLR(1'b0),
        .D(write_data_reg[2]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[30] 
       (.CLR(1'b0),
        .D(write_data_reg[30]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[31] 
       (.CLR(1'b0),
        .D(write_data_reg[31]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[3] 
       (.CLR(1'b0),
        .D(write_data_reg[3]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[4] 
       (.CLR(1'b0),
        .D(write_data_reg[4]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[5] 
       (.CLR(1'b0),
        .D(write_data_reg[5]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[6] 
       (.CLR(1'b0),
        .D(write_data_reg[6]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[7] 
       (.CLR(1'b0),
        .D(write_data_reg[7]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[8] 
       (.CLR(1'b0),
        .D(write_data_reg[8]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WDATA_reg[9] 
       (.CLR(1'b0),
        .D(write_data_reg[9]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WDATA[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WSTRB_reg[0] 
       (.CLR(1'b0),
        .D(strb_reg[0]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WSTRB[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WSTRB_reg[1] 
       (.CLR(1'b0),
        .D(strb_reg[1]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WSTRB[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WSTRB_reg[2] 
       (.CLR(1'b0),
        .D(strb_reg[2]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WSTRB[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \M_WSTRB_reg[3] 
       (.CLR(1'b0),
        .D(strb_reg[3]),
        .G(\M_AWADDR_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(M_WSTRB[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[0] 
       (.CLR(1'b0),
        .D(read_data_reg[0]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[10] 
       (.CLR(1'b0),
        .D(read_data_reg[10]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[11] 
       (.CLR(1'b0),
        .D(read_data_reg[11]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[12] 
       (.CLR(1'b0),
        .D(read_data_reg[12]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[13] 
       (.CLR(1'b0),
        .D(read_data_reg[13]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[14] 
       (.CLR(1'b0),
        .D(read_data_reg[14]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[15] 
       (.CLR(1'b0),
        .D(read_data_reg[15]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[16] 
       (.CLR(1'b0),
        .D(read_data_reg[16]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[17] 
       (.CLR(1'b0),
        .D(read_data_reg[17]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[18] 
       (.CLR(1'b0),
        .D(read_data_reg[18]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[19] 
       (.CLR(1'b0),
        .D(read_data_reg[19]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[1] 
       (.CLR(1'b0),
        .D(read_data_reg[1]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[20] 
       (.CLR(1'b0),
        .D(read_data_reg[20]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[21] 
       (.CLR(1'b0),
        .D(read_data_reg[21]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[22] 
       (.CLR(1'b0),
        .D(read_data_reg[22]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[23] 
       (.CLR(1'b0),
        .D(read_data_reg[23]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[24] 
       (.CLR(1'b0),
        .D(read_data_reg[24]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[25] 
       (.CLR(1'b0),
        .D(read_data_reg[25]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[26] 
       (.CLR(1'b0),
        .D(read_data_reg[26]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[27] 
       (.CLR(1'b0),
        .D(read_data_reg[27]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[28] 
       (.CLR(1'b0),
        .D(read_data_reg[28]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[29] 
       (.CLR(1'b0),
        .D(read_data_reg[29]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[2] 
       (.CLR(1'b0),
        .D(read_data_reg[2]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[30] 
       (.CLR(1'b0),
        .D(read_data_reg[30]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[31] 
       (.CLR(1'b0),
        .D(read_data_reg[31]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[31]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \U_RDATA_reg[31]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[4]),
        .I4(state[0]),
        .O(\U_RDATA_reg[31]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[3] 
       (.CLR(1'b0),
        .D(read_data_reg[3]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[4] 
       (.CLR(1'b0),
        .D(read_data_reg[4]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[5] 
       (.CLR(1'b0),
        .D(read_data_reg[5]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[6] 
       (.CLR(1'b0),
        .D(read_data_reg[6]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[7] 
       (.CLR(1'b0),
        .D(read_data_reg[7]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[8] 
       (.CLR(1'b0),
        .D(read_data_reg[8]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \U_RDATA_reg[9] 
       (.CLR(1'b0),
        .D(read_data_reg[9]),
        .G(\U_RDATA_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(U_RDATA[9]));
  FDRE \araddr_reg_reg[0] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[0]),
        .Q(araddr_reg[0]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[10] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[10]),
        .Q(araddr_reg[10]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[11] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[11]),
        .Q(araddr_reg[11]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[12] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[12]),
        .Q(araddr_reg[12]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[13] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[13]),
        .Q(araddr_reg[13]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[14] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[14]),
        .Q(araddr_reg[14]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[15] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[15]),
        .Q(araddr_reg[15]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[16] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[16]),
        .Q(araddr_reg[16]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[17] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[17]),
        .Q(araddr_reg[17]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[18] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[18]),
        .Q(araddr_reg[18]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[19] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[19]),
        .Q(araddr_reg[19]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[1] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[1]),
        .Q(araddr_reg[1]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[20] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[20]),
        .Q(araddr_reg[20]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[21] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[21]),
        .Q(araddr_reg[21]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[22] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[22]),
        .Q(araddr_reg[22]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[23] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[23]),
        .Q(araddr_reg[23]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[24] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[24]),
        .Q(araddr_reg[24]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[25] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[25]),
        .Q(araddr_reg[25]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[26] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[26]),
        .Q(araddr_reg[26]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[27] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[27]),
        .Q(araddr_reg[27]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[28] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[28]),
        .Q(araddr_reg[28]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[29] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[29]),
        .Q(araddr_reg[29]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[2] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[2]),
        .Q(araddr_reg[2]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[30] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[30]),
        .Q(araddr_reg[30]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[31] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[31]),
        .Q(araddr_reg[31]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[3] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[3]),
        .Q(araddr_reg[3]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[4] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[4]),
        .Q(araddr_reg[4]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[5] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[5]),
        .Q(araddr_reg[5]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[6] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[6]),
        .Q(araddr_reg[6]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[7] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[7]),
        .Q(araddr_reg[7]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[8] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[8]),
        .Q(araddr_reg[8]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[9] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_ARADDR[9]),
        .Q(araddr_reg[9]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[0] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[0]),
        .Q(awaddr_reg[0]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[10] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[10]),
        .Q(awaddr_reg[10]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[11] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[11]),
        .Q(awaddr_reg[11]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[12] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[12]),
        .Q(awaddr_reg[12]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[13] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[13]),
        .Q(awaddr_reg[13]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[14] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[14]),
        .Q(awaddr_reg[14]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[15] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[15]),
        .Q(awaddr_reg[15]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[16] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[16]),
        .Q(awaddr_reg[16]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[17] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[17]),
        .Q(awaddr_reg[17]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[18] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[18]),
        .Q(awaddr_reg[18]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[19] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[19]),
        .Q(awaddr_reg[19]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[1] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[1]),
        .Q(awaddr_reg[1]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[20] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[20]),
        .Q(awaddr_reg[20]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[21] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[21]),
        .Q(awaddr_reg[21]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[22] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[22]),
        .Q(awaddr_reg[22]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[23] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[23]),
        .Q(awaddr_reg[23]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[24] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[24]),
        .Q(awaddr_reg[24]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[25] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[25]),
        .Q(awaddr_reg[25]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[26] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[26]),
        .Q(awaddr_reg[26]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[27] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[27]),
        .Q(awaddr_reg[27]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[28] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[28]),
        .Q(awaddr_reg[28]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[29] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[29]),
        .Q(awaddr_reg[29]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[2] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[2]),
        .Q(awaddr_reg[2]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[30] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[30]),
        .Q(awaddr_reg[30]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[31] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[31]),
        .Q(awaddr_reg[31]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[3] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[3]),
        .Q(awaddr_reg[3]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[4] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[4]),
        .Q(awaddr_reg[4]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[5] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[5]),
        .Q(awaddr_reg[5]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[6] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[6]),
        .Q(awaddr_reg[6]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[7] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[7]),
        .Q(awaddr_reg[7]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[8] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[8]),
        .Q(awaddr_reg[8]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[9] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_AWADDR[9]),
        .Q(awaddr_reg[9]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \burst_length_reg[0] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_BLEN[0]),
        .Q(burst_length[0]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \burst_length_reg[1] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_BLEN[1]),
        .Q(burst_length[1]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \burst_length_reg[2] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_BLEN[2]),
        .Q(burst_length[2]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \burst_length_reg[3] 
       (.C(M_ACLK),
        .CE(U_RVALID),
        .D(U_BLEN[3]),
        .Q(burst_length[3]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[0] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[0]),
        .Q(read_data_reg[0]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[10] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[10]),
        .Q(read_data_reg[10]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[11] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[11]),
        .Q(read_data_reg[11]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[12] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[12]),
        .Q(read_data_reg[12]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[13] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[13]),
        .Q(read_data_reg[13]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[14] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[14]),
        .Q(read_data_reg[14]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[15] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[15]),
        .Q(read_data_reg[15]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[16] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[16]),
        .Q(read_data_reg[16]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[17] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[17]),
        .Q(read_data_reg[17]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[18] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[18]),
        .Q(read_data_reg[18]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[19] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[19]),
        .Q(read_data_reg[19]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[1] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[1]),
        .Q(read_data_reg[1]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[20] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[20]),
        .Q(read_data_reg[20]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[21] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[21]),
        .Q(read_data_reg[21]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[22] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[22]),
        .Q(read_data_reg[22]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[23] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[23]),
        .Q(read_data_reg[23]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[24] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[24]),
        .Q(read_data_reg[24]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[25] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[25]),
        .Q(read_data_reg[25]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[26] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[26]),
        .Q(read_data_reg[26]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[27] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[27]),
        .Q(read_data_reg[27]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[28] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[28]),
        .Q(read_data_reg[28]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[29] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[29]),
        .Q(read_data_reg[29]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[2] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[2]),
        .Q(read_data_reg[2]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[30] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[30]),
        .Q(read_data_reg[30]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[31] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[31]),
        .Q(read_data_reg[31]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[3] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[3]),
        .Q(read_data_reg[3]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[4] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[4]),
        .Q(read_data_reg[4]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[5] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[5]),
        .Q(read_data_reg[5]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[6] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[6]),
        .Q(read_data_reg[6]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[7] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[7]),
        .Q(read_data_reg[7]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[8] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[8]),
        .Q(read_data_reg[8]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[9] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(S_RDATA[9]),
        .Q(read_data_reg[9]),
        .R(\state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[0]_i_1 
       (.I0(state[3]),
        .I1(state[4]),
        .O(state_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \state[1]_i_1 
       (.I0(U_RVALID),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[4]),
        .I4(state[1]),
        .O(state_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \state[2]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[4]),
        .I3(state[1]),
        .I4(U_RVALID),
        .O(state_next[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \state[4]_i_1 
       (.I0(M_ARESET_N),
        .O(\state[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \state[4]_i_2 
       (.I0(\state[4]_i_3_n_0 ),
        .I1(state[0]),
        .I2(\state[4]_i_4_n_0 ),
        .I3(state[1]),
        .I4(\state[4]_i_5_n_0 ),
        .O(\state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000000E)) 
    \state[4]_i_3 
       (.I0(U_WVALID),
        .I1(U_RVALID),
        .I2(state[4]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(state[1]),
        .O(\state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \state[4]_i_4 
       (.I0(state[2]),
        .I1(state[4]),
        .I2(S_ARREADY),
        .I3(state[3]),
        .O(\state[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0033308800003088)) 
    \state[4]_i_5 
       (.I0(S_AWREADY),
        .I1(state[2]),
        .I2(S_RVALID),
        .I3(state[3]),
        .I4(state[4]),
        .I5(S_WREADY),
        .O(\state[4]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000000001,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,STATE_AWADDR:000000100,STATE_ARADDR:000000010" *) 
  FDSE \state_reg[0] 
       (.C(M_ACLK),
        .CE(\state[4]_i_2_n_0 ),
        .D(state_next[0]),
        .Q(state[0]),
        .S(\state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000000001,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,STATE_AWADDR:000000100,STATE_ARADDR:000000010" *) 
  FDRE \state_reg[1] 
       (.C(M_ACLK),
        .CE(\state[4]_i_2_n_0 ),
        .D(state_next[1]),
        .Q(state[1]),
        .R(\state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000000001,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,STATE_AWADDR:000000100,STATE_ARADDR:000000010" *) 
  FDRE \state_reg[2] 
       (.C(M_ACLK),
        .CE(\state[4]_i_2_n_0 ),
        .D(state_next[2]),
        .Q(state[2]),
        .R(\state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000000001,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,STATE_AWADDR:000000100,STATE_ARADDR:000000010" *) 
  FDRE \state_reg[3] 
       (.C(M_ACLK),
        .CE(\state[4]_i_2_n_0 ),
        .D(state[1]),
        .Q(state[3]),
        .R(\state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000000001,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,STATE_AWADDR:000000100,STATE_ARADDR:000000010" *) 
  FDRE \state_reg[4] 
       (.C(M_ACLK),
        .CE(\state[4]_i_2_n_0 ),
        .D(state[2]),
        .Q(state[4]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \strb_reg_reg[0] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_STRB[0]),
        .Q(strb_reg[0]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \strb_reg_reg[1] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_STRB[1]),
        .Q(strb_reg[1]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \strb_reg_reg[2] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_STRB[2]),
        .Q(strb_reg[2]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \strb_reg_reg[3] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_STRB[3]),
        .Q(strb_reg[3]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[0] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[0]),
        .Q(write_data_reg[0]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[10] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[10]),
        .Q(write_data_reg[10]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[11] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[11]),
        .Q(write_data_reg[11]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[12] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[12]),
        .Q(write_data_reg[12]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[13] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[13]),
        .Q(write_data_reg[13]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[14] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[14]),
        .Q(write_data_reg[14]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[15] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[15]),
        .Q(write_data_reg[15]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[16] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[16]),
        .Q(write_data_reg[16]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[17] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[17]),
        .Q(write_data_reg[17]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[18] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[18]),
        .Q(write_data_reg[18]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[19] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[19]),
        .Q(write_data_reg[19]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[1] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[1]),
        .Q(write_data_reg[1]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[20] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[20]),
        .Q(write_data_reg[20]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[21] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[21]),
        .Q(write_data_reg[21]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[22] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[22]),
        .Q(write_data_reg[22]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[23] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[23]),
        .Q(write_data_reg[23]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[24] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[24]),
        .Q(write_data_reg[24]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[25] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[25]),
        .Q(write_data_reg[25]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[26] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[26]),
        .Q(write_data_reg[26]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[27] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[27]),
        .Q(write_data_reg[27]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[28] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[28]),
        .Q(write_data_reg[28]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[29] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[29]),
        .Q(write_data_reg[29]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[2] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[2]),
        .Q(write_data_reg[2]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[30] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[30]),
        .Q(write_data_reg[30]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[31] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[31]),
        .Q(write_data_reg[31]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[3] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[3]),
        .Q(write_data_reg[3]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[4] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[4]),
        .Q(write_data_reg[4]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[5] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[5]),
        .Q(write_data_reg[5]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[6] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[6]),
        .Q(write_data_reg[6]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[7] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[7]),
        .Q(write_data_reg[7]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[8] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[8]),
        .Q(write_data_reg[8]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[9] 
       (.C(M_ACLK),
        .CE(U_WVALID),
        .D(U_WDATA[9]),
        .Q(write_data_reg[9]),
        .R(\state[4]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
