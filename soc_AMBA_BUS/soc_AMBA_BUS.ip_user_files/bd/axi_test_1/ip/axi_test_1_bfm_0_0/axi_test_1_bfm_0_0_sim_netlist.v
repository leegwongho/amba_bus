// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct  7 20:23:58 2024
// Host        : leegwongho running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/github/amba_bus/soc_AMBA_BUS/soc_AMBA_BUS.srcs/sources_1/bd/axi_test_1/ip/axi_test_1_bfm_0_0/axi_test_1_bfm_0_0_sim_netlist.v
// Design      : axi_test_1_bfm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_test_1_bfm_0_0,bfm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "bfm,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module axi_test_1_bfm_0_0
   (clk,
    reset,
    U_RDATA,
    sw,
    U_WVALID,
    U_AWADDR,
    U_WDATA,
    U_STRB,
    U_RVALID,
    U_ARADDR,
    U_BLEN,
    led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
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

  wire \<const0> ;
  wire [30:30]\^U_ARADDR ;
  wire [2:2]\^U_BLEN ;
  wire [31:0]U_RDATA;
  wire U_RVALID;
  wire [2:2]\^U_STRB ;
  wire [14:0]\^U_WDATA ;
  wire U_WVALID;
  wire clk;
  wire [14:0]led;
  wire reset;
  wire [15:0]sw;

  assign U_ARADDR[31] = \^U_ARADDR [30];
  assign U_ARADDR[30] = \^U_ARADDR [30];
  assign U_ARADDR[29] = \^U_ARADDR [30];
  assign U_ARADDR[28] = \^U_ARADDR [30];
  assign U_ARADDR[27] = \^U_ARADDR [30];
  assign U_ARADDR[26] = \^U_ARADDR [30];
  assign U_ARADDR[25] = \^U_ARADDR [30];
  assign U_ARADDR[24] = \^U_ARADDR [30];
  assign U_ARADDR[23] = \^U_ARADDR [30];
  assign U_ARADDR[22] = \^U_ARADDR [30];
  assign U_ARADDR[21] = \^U_ARADDR [30];
  assign U_ARADDR[20] = \^U_ARADDR [30];
  assign U_ARADDR[19] = \^U_ARADDR [30];
  assign U_ARADDR[18] = \^U_ARADDR [30];
  assign U_ARADDR[17] = \^U_ARADDR [30];
  assign U_ARADDR[16] = \^U_ARADDR [30];
  assign U_ARADDR[15] = \^U_ARADDR [30];
  assign U_ARADDR[14] = \^U_ARADDR [30];
  assign U_ARADDR[13] = \^U_ARADDR [30];
  assign U_ARADDR[12] = \^U_ARADDR [30];
  assign U_ARADDR[11] = \^U_ARADDR [30];
  assign U_ARADDR[10] = \^U_ARADDR [30];
  assign U_ARADDR[9] = \^U_ARADDR [30];
  assign U_ARADDR[8] = \^U_ARADDR [30];
  assign U_ARADDR[7] = \^U_ARADDR [30];
  assign U_ARADDR[6] = \^U_ARADDR [30];
  assign U_ARADDR[5] = \^U_ARADDR [30];
  assign U_ARADDR[4] = \^U_ARADDR [30];
  assign U_ARADDR[3] = \^U_ARADDR [30];
  assign U_ARADDR[2] = \^U_ARADDR [30];
  assign U_ARADDR[1] = \^U_ARADDR [30];
  assign U_ARADDR[0] = \^U_ARADDR [30];
  assign U_AWADDR[31] = \<const0> ;
  assign U_AWADDR[30] = \<const0> ;
  assign U_AWADDR[29] = \<const0> ;
  assign U_AWADDR[28] = \<const0> ;
  assign U_AWADDR[27] = \<const0> ;
  assign U_AWADDR[26] = \<const0> ;
  assign U_AWADDR[25] = \<const0> ;
  assign U_AWADDR[24] = \<const0> ;
  assign U_AWADDR[23] = \<const0> ;
  assign U_AWADDR[22] = \<const0> ;
  assign U_AWADDR[21] = \<const0> ;
  assign U_AWADDR[20] = \<const0> ;
  assign U_AWADDR[19] = \<const0> ;
  assign U_AWADDR[18] = \<const0> ;
  assign U_AWADDR[17] = \<const0> ;
  assign U_AWADDR[16] = \<const0> ;
  assign U_AWADDR[15] = \<const0> ;
  assign U_AWADDR[14] = \<const0> ;
  assign U_AWADDR[13] = \<const0> ;
  assign U_AWADDR[12] = \<const0> ;
  assign U_AWADDR[11] = \<const0> ;
  assign U_AWADDR[10] = \<const0> ;
  assign U_AWADDR[9] = \<const0> ;
  assign U_AWADDR[8] = \<const0> ;
  assign U_AWADDR[7] = \<const0> ;
  assign U_AWADDR[6] = \<const0> ;
  assign U_AWADDR[5] = \<const0> ;
  assign U_AWADDR[4] = \<const0> ;
  assign U_AWADDR[3] = \<const0> ;
  assign U_AWADDR[2] = \<const0> ;
  assign U_AWADDR[1] = \<const0> ;
  assign U_AWADDR[0] = \<const0> ;
  assign U_BLEN[3] = \^U_BLEN [2];
  assign U_BLEN[2] = \^U_BLEN [2];
  assign U_BLEN[1] = \^U_BLEN [2];
  assign U_BLEN[0] = \^U_BLEN [2];
  assign U_STRB[3] = \^U_STRB [2];
  assign U_STRB[2] = \^U_STRB [2];
  assign U_STRB[1] = \^U_STRB [2];
  assign U_STRB[0] = \^U_STRB [2];
  assign U_WDATA[31] = \<const0> ;
  assign U_WDATA[30] = \<const0> ;
  assign U_WDATA[29] = \<const0> ;
  assign U_WDATA[28] = \<const0> ;
  assign U_WDATA[27] = \<const0> ;
  assign U_WDATA[26] = \<const0> ;
  assign U_WDATA[25] = \<const0> ;
  assign U_WDATA[24] = \<const0> ;
  assign U_WDATA[23] = \<const0> ;
  assign U_WDATA[22] = \<const0> ;
  assign U_WDATA[21] = \<const0> ;
  assign U_WDATA[20] = \<const0> ;
  assign U_WDATA[19] = \<const0> ;
  assign U_WDATA[18] = \<const0> ;
  assign U_WDATA[17] = \<const0> ;
  assign U_WDATA[16] = \<const0> ;
  assign U_WDATA[15] = \<const0> ;
  assign U_WDATA[14:0] = \^U_WDATA [14:0];
  GND GND
       (.G(\<const0> ));
  axi_test_1_bfm_0_0_bfm inst
       (.U_ARADDR(\^U_ARADDR ),
        .U_BLEN(\^U_BLEN ),
        .U_RDATA(U_RDATA[14:0]),
        .U_RVALID(U_RVALID),
        .U_STRB(\^U_STRB ),
        .U_WDATA(\^U_WDATA ),
        .U_WVALID(U_WVALID),
        .clk(clk),
        .led(led),
        .reset(reset),
        .sw(sw));
endmodule

(* ORIG_REF_NAME = "bfm" *) 
module axi_test_1_bfm_0_0_bfm
   (U_WDATA,
    U_STRB,
    led,
    U_WVALID,
    U_RVALID,
    U_ARADDR,
    U_BLEN,
    sw,
    clk,
    U_RDATA,
    reset);
  output [14:0]U_WDATA;
  output [0:0]U_STRB;
  output [14:0]led;
  output U_WVALID;
  output U_RVALID;
  output [0:0]U_ARADDR;
  output [0:0]U_BLEN;
  input [15:0]sw;
  input clk;
  input [14:0]U_RDATA;
  input reset;

  wire [0:0]U_ARADDR;
  wire \U_ARADDR[31]_i_1_n_0 ;
  wire [0:0]U_BLEN;
  wire \U_BLEN[3]_i_1_n_0 ;
  wire [14:0]U_RDATA;
  wire U_RVALID;
  wire U_RVALID_i_1_n_0;
  wire [0:0]U_STRB;
  wire [14:0]U_WDATA;
  wire \U_WDATA[14]_i_1_n_0 ;
  wire U_WVALID;
  wire U_WVALID_i_1_n_0;
  wire U_WVALID_i_2_n_0;
  wire clk;
  wire \clk_div_reg_n_0_[0] ;
  wire \clk_div_reg_n_0_[1] ;
  wire \clk_div_reg_n_0_[2] ;
  wire \clk_div_reg_n_0_[3] ;
  wire \clk_div_reg_n_0_[4] ;
  wire [14:0]led;
  wire p_0_in;
  wire p_0_in_0;
  wire [5:0]p_0_in__0;
  wire reset;
  wire [15:0]sw;

  LUT4 #(
    .INIT(16'hDF00)) 
    \U_ARADDR[31]_i_1 
       (.I0(reset),
        .I1(sw[15]),
        .I2(p_0_in_0),
        .I3(U_ARADDR),
        .O(\U_ARADDR[31]_i_1_n_0 ));
  FDRE \U_ARADDR_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\U_ARADDR[31]_i_1_n_0 ),
        .Q(U_ARADDR),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF2)) 
    \U_BLEN[3]_i_1 
       (.I0(p_0_in_0),
        .I1(sw[15]),
        .I2(U_BLEN),
        .O(\U_BLEN[3]_i_1_n_0 ));
  FDCE \U_BLEN_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(U_WVALID_i_2_n_0),
        .D(\U_BLEN[3]_i_1_n_0 ),
        .Q(U_BLEN));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hC4)) 
    U_RVALID_i_1
       (.I0(sw[15]),
        .I1(p_0_in_0),
        .I2(U_RVALID),
        .O(U_RVALID_i_1_n_0));
  FDCE U_RVALID_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RVALID_i_1_n_0),
        .Q(U_RVALID));
  FDCE \U_STRB_reg[3] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[15]),
        .Q(U_STRB));
  LUT2 #(
    .INIT(4'h8)) 
    \U_WDATA[14]_i_1 
       (.I0(p_0_in_0),
        .I1(sw[15]),
        .O(\U_WDATA[14]_i_1_n_0 ));
  FDCE \U_WDATA_reg[0] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[0]),
        .Q(U_WDATA[0]));
  FDCE \U_WDATA_reg[10] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[10]),
        .Q(U_WDATA[10]));
  FDCE \U_WDATA_reg[11] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[11]),
        .Q(U_WDATA[11]));
  FDCE \U_WDATA_reg[12] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[12]),
        .Q(U_WDATA[12]));
  FDCE \U_WDATA_reg[13] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[13]),
        .Q(U_WDATA[13]));
  FDCE \U_WDATA_reg[14] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[14]),
        .Q(U_WDATA[14]));
  FDCE \U_WDATA_reg[1] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[1]),
        .Q(U_WDATA[1]));
  FDCE \U_WDATA_reg[2] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[2]),
        .Q(U_WDATA[2]));
  FDCE \U_WDATA_reg[3] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[3]),
        .Q(U_WDATA[3]));
  FDCE \U_WDATA_reg[4] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[4]),
        .Q(U_WDATA[4]));
  FDCE \U_WDATA_reg[5] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[5]),
        .Q(U_WDATA[5]));
  FDCE \U_WDATA_reg[6] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[6]),
        .Q(U_WDATA[6]));
  FDCE \U_WDATA_reg[7] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[7]),
        .Q(U_WDATA[7]));
  FDCE \U_WDATA_reg[8] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[8]),
        .Q(U_WDATA[8]));
  FDCE \U_WDATA_reg[9] 
       (.C(clk),
        .CE(\U_WDATA[14]_i_1_n_0 ),
        .CLR(U_WVALID_i_2_n_0),
        .D(sw[9]),
        .Q(U_WDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    U_WVALID_i_1
       (.I0(sw[15]),
        .I1(p_0_in_0),
        .I2(U_WVALID),
        .O(U_WVALID_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    U_WVALID_i_2
       (.I0(reset),
        .O(U_WVALID_i_2_n_0));
  FDCE U_WVALID_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_WVALID_i_1_n_0),
        .Q(U_WVALID));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div[0]_i_1 
       (.I0(\clk_div_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_div[1]_i_1 
       (.I0(\clk_div_reg_n_0_[0] ),
        .I1(\clk_div_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_div[2]_i_1 
       (.I0(\clk_div_reg_n_0_[0] ),
        .I1(\clk_div_reg_n_0_[1] ),
        .I2(\clk_div_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_div[3]_i_1 
       (.I0(\clk_div_reg_n_0_[1] ),
        .I1(\clk_div_reg_n_0_[0] ),
        .I2(\clk_div_reg_n_0_[2] ),
        .I3(\clk_div_reg_n_0_[3] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clk_div[4]_i_1 
       (.I0(\clk_div_reg_n_0_[2] ),
        .I1(\clk_div_reg_n_0_[0] ),
        .I2(\clk_div_reg_n_0_[1] ),
        .I3(\clk_div_reg_n_0_[3] ),
        .I4(\clk_div_reg_n_0_[4] ),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clk_div[5]_i_1 
       (.I0(\clk_div_reg_n_0_[3] ),
        .I1(\clk_div_reg_n_0_[1] ),
        .I2(\clk_div_reg_n_0_[0] ),
        .I3(\clk_div_reg_n_0_[2] ),
        .I4(\clk_div_reg_n_0_[4] ),
        .I5(p_0_in_0),
        .O(p_0_in__0[5]));
  FDCE \clk_div_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(U_WVALID_i_2_n_0),
        .D(p_0_in__0[0]),
        .Q(\clk_div_reg_n_0_[0] ));
  FDCE \clk_div_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(U_WVALID_i_2_n_0),
        .D(p_0_in__0[1]),
        .Q(\clk_div_reg_n_0_[1] ));
  FDCE \clk_div_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(U_WVALID_i_2_n_0),
        .D(p_0_in__0[2]),
        .Q(\clk_div_reg_n_0_[2] ));
  FDCE \clk_div_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(U_WVALID_i_2_n_0),
        .D(p_0_in__0[3]),
        .Q(\clk_div_reg_n_0_[3] ));
  FDCE \clk_div_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(U_WVALID_i_2_n_0),
        .D(p_0_in__0[4]),
        .Q(\clk_div_reg_n_0_[4] ));
  FDCE \clk_div_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(U_WVALID_i_2_n_0),
        .D(p_0_in__0[5]),
        .Q(p_0_in_0));
  LUT1 #(
    .INIT(2'h1)) 
    \led[14]_i_1 
       (.I0(p_0_in_0),
        .O(p_0_in));
  FDCE \led_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RDATA[0]),
        .Q(led[0]));
  FDCE \led_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RDATA[10]),
        .Q(led[10]));
  FDCE \led_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RDATA[11]),
        .Q(led[11]));
  FDCE \led_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RDATA[12]),
        .Q(led[12]));
  FDCE \led_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RDATA[13]),
        .Q(led[13]));
  FDCE \led_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RDATA[14]),
        .Q(led[14]));
  FDCE \led_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RDATA[1]),
        .Q(led[1]));
  FDCE \led_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RDATA[2]),
        .Q(led[2]));
  FDCE \led_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RDATA[3]),
        .Q(led[3]));
  FDCE \led_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RDATA[4]),
        .Q(led[4]));
  FDCE \led_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RDATA[5]),
        .Q(led[5]));
  FDCE \led_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RDATA[6]),
        .Q(led[6]));
  FDCE \led_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RDATA[7]),
        .Q(led[7]));
  FDCE \led_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RDATA[8]),
        .Q(led[8]));
  FDCE \led_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(U_WVALID_i_2_n_0),
        .D(U_RDATA[9]),
        .Q(led[9]));
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
