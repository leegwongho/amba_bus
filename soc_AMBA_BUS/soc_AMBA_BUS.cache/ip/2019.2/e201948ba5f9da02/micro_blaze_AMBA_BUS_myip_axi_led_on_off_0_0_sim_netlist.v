// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Oct  4 14:58:32 2024
// Host        : leegwongho running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ micro_blaze_AMBA_BUS_myip_axi_led_on_off_0_0_sim_netlist.v
// Design      : micro_blaze_AMBA_BUS_myip_axi_led_on_off_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master
   (AWVALID,
    WVALID_reg_0,
    ARVALID,
    RREADY,
    Q,
    \w_state_reg[1]_0 ,
    \aw_state_reg[1]_0 ,
    \ar_state_reg[1]_0 ,
    D,
    \AWADDR_reg[3]_0 ,
    \WDATA_reg[31]_0 ,
    \WSTRB_reg[3]_0 ,
    \ARADDR_reg[3]_0 ,
    s00_axi_aresetn,
    AWVALID_reg_0,
    s00_axi_aclk,
    WVALID_reg_1,
    ARVALID_reg_0,
    RREADY_reg_0,
    \aw_addr_reg_next_reg[3]_0 ,
    \aw_state_next_reg[1]_0 ,
    \w_data_reg_next_reg[31]_0 ,
    \axi_rdata_reg[7] ,
    \ar_addr_reg_next_reg[3]_0 ,
    \ar_state_next_reg[1]_0 ,
    \r_data_reg_next_reg[7]_0 ,
    sel0,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[7]_0 ,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[2] ,
    \axi_rdata_reg[3] ,
    \axi_rdata_reg[4] ,
    \axi_rdata_reg[5] ,
    \axi_rdata_reg[6] ,
    \axi_rdata_reg[7]_1 ,
    \aw_state_next_reg[0]_0 ,
    WREADY,
    SR,
    ARREADY,
    RVALID);
  output AWVALID;
  output WVALID_reg_0;
  output ARVALID;
  output RREADY;
  output [1:0]Q;
  output [1:0]\w_state_reg[1]_0 ;
  output [1:0]\aw_state_reg[1]_0 ;
  output [1:0]\ar_state_reg[1]_0 ;
  output [7:0]D;
  output [3:0]\AWADDR_reg[3]_0 ;
  output [31:0]\WDATA_reg[31]_0 ;
  output [3:0]\WSTRB_reg[3]_0 ;
  output [3:0]\ARADDR_reg[3]_0 ;
  input s00_axi_aresetn;
  input AWVALID_reg_0;
  input s00_axi_aclk;
  input WVALID_reg_1;
  input ARVALID_reg_0;
  input RREADY_reg_0;
  input [3:0]\aw_addr_reg_next_reg[3]_0 ;
  input [0:0]\aw_state_next_reg[1]_0 ;
  input [31:0]\w_data_reg_next_reg[31]_0 ;
  input [7:0]\axi_rdata_reg[7] ;
  input [3:0]\ar_addr_reg_next_reg[3]_0 ;
  input [0:0]\ar_state_next_reg[1]_0 ;
  input [7:0]\r_data_reg_next_reg[7]_0 ;
  input [2:0]sel0;
  input \axi_rdata_reg[0] ;
  input [7:0]\axi_rdata_reg[7]_0 ;
  input \axi_rdata_reg[1] ;
  input \axi_rdata_reg[2] ;
  input \axi_rdata_reg[3] ;
  input \axi_rdata_reg[4] ;
  input \axi_rdata_reg[5] ;
  input \axi_rdata_reg[6] ;
  input \axi_rdata_reg[7]_1 ;
  input \aw_state_next_reg[0]_0 ;
  input WREADY;
  input [0:0]SR;
  input ARREADY;
  input RVALID;

  wire \ARADDR[3]_i_1_n_0 ;
  wire [3:0]\ARADDR_reg[3]_0 ;
  wire ARREADY;
  wire ARVALID;
  wire ARVALID_reg_0;
  wire \AWADDR[3]_i_1_n_0 ;
  wire [3:0]\AWADDR_reg[3]_0 ;
  wire AWVALID;
  wire AWVALID_reg_0;
  wire [7:0]D;
  wire [1:0]Q;
  wire RREADY;
  wire RREADY_reg_0;
  wire RVALID;
  wire [0:0]SR;
  wire \WDATA[31]_i_1_n_0 ;
  wire [31:0]\WDATA_reg[31]_0 ;
  wire WREADY;
  wire [3:0]\WSTRB_reg[3]_0 ;
  wire WVALID_reg_0;
  wire WVALID_reg_1;
  wire [3:0]ar_addr_reg;
  wire [3:0]ar_addr_reg_next;
  wire \ar_addr_reg_next[0]_i_1_n_0 ;
  wire \ar_addr_reg_next[1]_i_1_n_0 ;
  wire \ar_addr_reg_next[2]_i_1_n_0 ;
  wire \ar_addr_reg_next[3]_i_1_n_0 ;
  wire [3:0]\ar_addr_reg_next_reg[3]_0 ;
  wire [1:0]ar_state_next;
  wire \ar_state_next[0]_i_1_n_0 ;
  wire \ar_state_next[1]_i_1_n_0 ;
  wire [0:0]\ar_state_next_reg[1]_0 ;
  wire [1:0]\ar_state_reg[1]_0 ;
  wire [3:0]aw_addr_reg;
  wire [3:0]aw_addr_reg_next;
  wire [3:0]\aw_addr_reg_next_reg[3]_0 ;
  wire [1:0]aw_state_next;
  wire \aw_state_next[0]_i_1_n_0 ;
  wire \aw_state_next[1]_i_1_n_0 ;
  wire \aw_state_next_reg[0]_0 ;
  wire [0:0]\aw_state_next_reg[1]_0 ;
  wire [1:0]\aw_state_reg[1]_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[1] ;
  wire \axi_rdata_reg[2] ;
  wire \axi_rdata_reg[3] ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[5] ;
  wire \axi_rdata_reg[6] ;
  wire [7:0]\axi_rdata_reg[7] ;
  wire [7:0]\axi_rdata_reg[7]_0 ;
  wire \axi_rdata_reg[7]_1 ;
  wire [3:0]p_1_in;
  wire [7:0]r_data;
  wire \r_data[7]_i_1_n_0 ;
  wire [7:0]r_data_reg;
  wire [7:0]r_data_reg_next;
  wire \r_data_reg_next[0]_i_1_n_0 ;
  wire \r_data_reg_next[1]_i_1_n_0 ;
  wire \r_data_reg_next[2]_i_1_n_0 ;
  wire \r_data_reg_next[3]_i_1_n_0 ;
  wire \r_data_reg_next[4]_i_1_n_0 ;
  wire \r_data_reg_next[5]_i_1_n_0 ;
  wire \r_data_reg_next[6]_i_1_n_0 ;
  wire \r_data_reg_next[7]_i_1_n_0 ;
  wire [7:0]\r_data_reg_next_reg[7]_0 ;
  wire [1:0]r_state_next;
  wire \r_state_next[0]_i_1_n_0 ;
  wire \r_state_next[1]_i_1_n_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [2:0]sel0;
  wire [31:0]w_data_reg;
  wire [31:0]w_data_reg_next;
  wire \w_data_reg_next[0]_i_1_n_0 ;
  wire \w_data_reg_next[10]_i_1_n_0 ;
  wire \w_data_reg_next[11]_i_1_n_0 ;
  wire \w_data_reg_next[12]_i_1_n_0 ;
  wire \w_data_reg_next[13]_i_1_n_0 ;
  wire \w_data_reg_next[14]_i_1_n_0 ;
  wire \w_data_reg_next[15]_i_1_n_0 ;
  wire \w_data_reg_next[16]_i_1_n_0 ;
  wire \w_data_reg_next[17]_i_1_n_0 ;
  wire \w_data_reg_next[18]_i_1_n_0 ;
  wire \w_data_reg_next[19]_i_1_n_0 ;
  wire \w_data_reg_next[1]_i_1_n_0 ;
  wire \w_data_reg_next[20]_i_1_n_0 ;
  wire \w_data_reg_next[21]_i_1_n_0 ;
  wire \w_data_reg_next[22]_i_1_n_0 ;
  wire \w_data_reg_next[23]_i_1_n_0 ;
  wire \w_data_reg_next[24]_i_1_n_0 ;
  wire \w_data_reg_next[25]_i_1_n_0 ;
  wire \w_data_reg_next[26]_i_1_n_0 ;
  wire \w_data_reg_next[27]_i_1_n_0 ;
  wire \w_data_reg_next[28]_i_1_n_0 ;
  wire \w_data_reg_next[29]_i_1_n_0 ;
  wire \w_data_reg_next[2]_i_1_n_0 ;
  wire \w_data_reg_next[30]_i_1_n_0 ;
  wire \w_data_reg_next[31]_i_1_n_0 ;
  wire \w_data_reg_next[3]_i_1_n_0 ;
  wire \w_data_reg_next[4]_i_1_n_0 ;
  wire \w_data_reg_next[5]_i_1_n_0 ;
  wire \w_data_reg_next[6]_i_1_n_0 ;
  wire \w_data_reg_next[7]_i_1_n_0 ;
  wire \w_data_reg_next[8]_i_1_n_0 ;
  wire \w_data_reg_next[9]_i_1_n_0 ;
  wire [31:0]\w_data_reg_next_reg[31]_0 ;
  wire [1:0]w_state_next;
  wire \w_state_next[0]_i_1_n_0 ;
  wire \w_state_next[1]_i_1_n_0 ;
  wire [1:0]\w_state_reg[1]_0 ;
  wire [3:0]w_strb_reg;
  wire [3:0]w_strb_reg_next;
  wire \w_strb_reg_next[0]_i_1_n_0 ;
  wire \w_strb_reg_next[1]_i_1_n_0 ;
  wire \w_strb_reg_next[2]_i_1_n_0 ;
  wire \w_strb_reg_next[3]_i_1_n_0 ;

  LUT3 #(
    .INIT(8'h04)) 
    \ARADDR[3]_i_1 
       (.I0(\ar_state_reg[1]_0 [0]),
        .I1(\ar_state_reg[1]_0 [1]),
        .I2(s00_axi_aresetn),
        .O(\ARADDR[3]_i_1_n_0 ));
  FDRE \ARADDR_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ARADDR[3]_i_1_n_0 ),
        .D(ar_addr_reg[0]),
        .Q(\ARADDR_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \ARADDR_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ARADDR[3]_i_1_n_0 ),
        .D(ar_addr_reg[1]),
        .Q(\ARADDR_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \ARADDR_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ARADDR[3]_i_1_n_0 ),
        .D(ar_addr_reg[2]),
        .Q(\ARADDR_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \ARADDR_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ARADDR[3]_i_1_n_0 ),
        .D(ar_addr_reg[3]),
        .Q(\ARADDR_reg[3]_0 [3]),
        .R(1'b0));
  FDRE ARVALID_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ARVALID_reg_0),
        .Q(ARVALID),
        .R(s00_axi_aresetn));
  LUT3 #(
    .INIT(8'h04)) 
    \AWADDR[3]_i_1 
       (.I0(\aw_state_reg[1]_0 [0]),
        .I1(\aw_state_reg[1]_0 [1]),
        .I2(s00_axi_aresetn),
        .O(\AWADDR[3]_i_1_n_0 ));
  FDRE \AWADDR_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\AWADDR[3]_i_1_n_0 ),
        .D(aw_addr_reg[0]),
        .Q(\AWADDR_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \AWADDR_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\AWADDR[3]_i_1_n_0 ),
        .D(aw_addr_reg[1]),
        .Q(\AWADDR_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \AWADDR_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\AWADDR[3]_i_1_n_0 ),
        .D(aw_addr_reg[2]),
        .Q(\AWADDR_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \AWADDR_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\AWADDR[3]_i_1_n_0 ),
        .D(aw_addr_reg[3]),
        .Q(\AWADDR_reg[3]_0 [3]),
        .R(1'b0));
  FDRE AWVALID_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(AWVALID_reg_0),
        .Q(AWVALID),
        .R(s00_axi_aresetn));
  FDRE RREADY_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(RREADY_reg_0),
        .Q(RREADY),
        .R(s00_axi_aresetn));
  LUT3 #(
    .INIT(8'h04)) 
    \WDATA[31]_i_1 
       (.I0(\w_state_reg[1]_0 [0]),
        .I1(\w_state_reg[1]_0 [1]),
        .I2(s00_axi_aresetn),
        .O(\WDATA[31]_i_1_n_0 ));
  FDRE \WDATA_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[0]),
        .Q(\WDATA_reg[31]_0 [0]),
        .R(1'b0));
  FDRE \WDATA_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[10]),
        .Q(\WDATA_reg[31]_0 [10]),
        .R(1'b0));
  FDRE \WDATA_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[11]),
        .Q(\WDATA_reg[31]_0 [11]),
        .R(1'b0));
  FDRE \WDATA_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[12]),
        .Q(\WDATA_reg[31]_0 [12]),
        .R(1'b0));
  FDRE \WDATA_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[13]),
        .Q(\WDATA_reg[31]_0 [13]),
        .R(1'b0));
  FDRE \WDATA_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[14]),
        .Q(\WDATA_reg[31]_0 [14]),
        .R(1'b0));
  FDRE \WDATA_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[15]),
        .Q(\WDATA_reg[31]_0 [15]),
        .R(1'b0));
  FDRE \WDATA_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[16]),
        .Q(\WDATA_reg[31]_0 [16]),
        .R(1'b0));
  FDRE \WDATA_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[17]),
        .Q(\WDATA_reg[31]_0 [17]),
        .R(1'b0));
  FDRE \WDATA_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[18]),
        .Q(\WDATA_reg[31]_0 [18]),
        .R(1'b0));
  FDRE \WDATA_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[19]),
        .Q(\WDATA_reg[31]_0 [19]),
        .R(1'b0));
  FDRE \WDATA_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[1]),
        .Q(\WDATA_reg[31]_0 [1]),
        .R(1'b0));
  FDRE \WDATA_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[20]),
        .Q(\WDATA_reg[31]_0 [20]),
        .R(1'b0));
  FDRE \WDATA_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[21]),
        .Q(\WDATA_reg[31]_0 [21]),
        .R(1'b0));
  FDRE \WDATA_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[22]),
        .Q(\WDATA_reg[31]_0 [22]),
        .R(1'b0));
  FDRE \WDATA_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[23]),
        .Q(\WDATA_reg[31]_0 [23]),
        .R(1'b0));
  FDRE \WDATA_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[24]),
        .Q(\WDATA_reg[31]_0 [24]),
        .R(1'b0));
  FDRE \WDATA_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[25]),
        .Q(\WDATA_reg[31]_0 [25]),
        .R(1'b0));
  FDRE \WDATA_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[26]),
        .Q(\WDATA_reg[31]_0 [26]),
        .R(1'b0));
  FDRE \WDATA_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[27]),
        .Q(\WDATA_reg[31]_0 [27]),
        .R(1'b0));
  FDRE \WDATA_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[28]),
        .Q(\WDATA_reg[31]_0 [28]),
        .R(1'b0));
  FDRE \WDATA_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[29]),
        .Q(\WDATA_reg[31]_0 [29]),
        .R(1'b0));
  FDRE \WDATA_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[2]),
        .Q(\WDATA_reg[31]_0 [2]),
        .R(1'b0));
  FDRE \WDATA_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[30]),
        .Q(\WDATA_reg[31]_0 [30]),
        .R(1'b0));
  FDRE \WDATA_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[31]),
        .Q(\WDATA_reg[31]_0 [31]),
        .R(1'b0));
  FDRE \WDATA_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[3]),
        .Q(\WDATA_reg[31]_0 [3]),
        .R(1'b0));
  FDRE \WDATA_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[4]),
        .Q(\WDATA_reg[31]_0 [4]),
        .R(1'b0));
  FDRE \WDATA_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[5]),
        .Q(\WDATA_reg[31]_0 [5]),
        .R(1'b0));
  FDRE \WDATA_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[6]),
        .Q(\WDATA_reg[31]_0 [6]),
        .R(1'b0));
  FDRE \WDATA_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[7]),
        .Q(\WDATA_reg[31]_0 [7]),
        .R(1'b0));
  FDRE \WDATA_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[8]),
        .Q(\WDATA_reg[31]_0 [8]),
        .R(1'b0));
  FDRE \WDATA_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_data_reg[9]),
        .Q(\WDATA_reg[31]_0 [9]),
        .R(1'b0));
  FDRE \WSTRB_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_strb_reg[0]),
        .Q(\WSTRB_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \WSTRB_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_strb_reg[1]),
        .Q(\WSTRB_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \WSTRB_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_strb_reg[2]),
        .Q(\WSTRB_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \WSTRB_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\WDATA[31]_i_1_n_0 ),
        .D(w_strb_reg[3]),
        .Q(\WSTRB_reg[3]_0 [3]),
        .R(1'b0));
  FDRE WVALID_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(WVALID_reg_1),
        .Q(WVALID_reg_0),
        .R(s00_axi_aresetn));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \ar_addr_reg_next[0]_i_1 
       (.I0(\ar_addr_reg_next_reg[3]_0 [0]),
        .I1(\ar_state_next_reg[1]_0 ),
        .I2(ar_addr_reg[0]),
        .I3(\ar_state_reg[1]_0 [1]),
        .I4(\ar_state_reg[1]_0 [0]),
        .O(\ar_addr_reg_next[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \ar_addr_reg_next[1]_i_1 
       (.I0(\ar_addr_reg_next_reg[3]_0 [1]),
        .I1(\ar_state_next_reg[1]_0 ),
        .I2(ar_addr_reg[1]),
        .I3(\ar_state_reg[1]_0 [1]),
        .I4(\ar_state_reg[1]_0 [0]),
        .O(\ar_addr_reg_next[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \ar_addr_reg_next[2]_i_1 
       (.I0(\ar_addr_reg_next_reg[3]_0 [2]),
        .I1(\ar_state_next_reg[1]_0 ),
        .I2(ar_addr_reg[2]),
        .I3(\ar_state_reg[1]_0 [1]),
        .I4(\ar_state_reg[1]_0 [0]),
        .O(\ar_addr_reg_next[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \ar_addr_reg_next[3]_i_1 
       (.I0(\ar_addr_reg_next_reg[3]_0 [3]),
        .I1(\ar_state_next_reg[1]_0 ),
        .I2(ar_addr_reg[3]),
        .I3(\ar_state_reg[1]_0 [1]),
        .I4(\ar_state_reg[1]_0 [0]),
        .O(\ar_addr_reg_next[3]_i_1_n_0 ));
  FDRE \ar_addr_reg_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ar_addr_reg_next[0]_i_1_n_0 ),
        .Q(ar_addr_reg_next[0]),
        .R(s00_axi_aresetn));
  FDRE \ar_addr_reg_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ar_addr_reg_next[1]_i_1_n_0 ),
        .Q(ar_addr_reg_next[1]),
        .R(s00_axi_aresetn));
  FDRE \ar_addr_reg_next_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ar_addr_reg_next[2]_i_1_n_0 ),
        .Q(ar_addr_reg_next[2]),
        .R(s00_axi_aresetn));
  FDRE \ar_addr_reg_next_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ar_addr_reg_next[3]_i_1_n_0 ),
        .Q(ar_addr_reg_next[3]),
        .R(s00_axi_aresetn));
  FDCE \ar_addr_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(ar_addr_reg_next[0]),
        .Q(ar_addr_reg[0]));
  FDCE \ar_addr_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(ar_addr_reg_next[1]),
        .Q(ar_addr_reg[1]));
  FDCE \ar_addr_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(ar_addr_reg_next[2]),
        .Q(ar_addr_reg[2]));
  FDCE \ar_addr_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(ar_addr_reg_next[3]),
        .Q(ar_addr_reg[3]));
  LUT5 #(
    .INIT(32'hF7F73000)) 
    \ar_state_next[0]_i_1 
       (.I0(\ar_state_next_reg[1]_0 ),
        .I1(\ar_state_reg[1]_0 [0]),
        .I2(\ar_state_reg[1]_0 [1]),
        .I3(ARREADY),
        .I4(ar_state_next[0]),
        .O(\ar_state_next[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCFFF0808)) 
    \ar_state_next[1]_i_1 
       (.I0(\ar_state_next_reg[1]_0 ),
        .I1(\ar_state_reg[1]_0 [0]),
        .I2(\ar_state_reg[1]_0 [1]),
        .I3(ARREADY),
        .I4(ar_state_next[1]),
        .O(\ar_state_next[1]_i_1_n_0 ));
  FDSE \ar_state_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ar_state_next[0]_i_1_n_0 ),
        .Q(ar_state_next[0]),
        .S(s00_axi_aresetn));
  FDRE \ar_state_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ar_state_next[1]_i_1_n_0 ),
        .Q(ar_state_next[1]),
        .R(s00_axi_aresetn));
  FDPE \ar_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ar_state_next[0]),
        .PRE(s00_axi_aresetn),
        .Q(\ar_state_reg[1]_0 [0]));
  FDCE \ar_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(ar_state_next[1]),
        .Q(\ar_state_reg[1]_0 [1]));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \aw_addr_reg_next[0]_i_1 
       (.I0(\aw_addr_reg_next_reg[3]_0 [0]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(aw_addr_reg[0]),
        .I3(\aw_state_reg[1]_0 [1]),
        .I4(\aw_state_reg[1]_0 [0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \aw_addr_reg_next[1]_i_1 
       (.I0(\aw_addr_reg_next_reg[3]_0 [1]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(aw_addr_reg[1]),
        .I3(\aw_state_reg[1]_0 [1]),
        .I4(\aw_state_reg[1]_0 [0]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \aw_addr_reg_next[2]_i_1 
       (.I0(\aw_addr_reg_next_reg[3]_0 [2]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(aw_addr_reg[2]),
        .I3(\aw_state_reg[1]_0 [1]),
        .I4(\aw_state_reg[1]_0 [0]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \aw_addr_reg_next[3]_i_1 
       (.I0(\aw_addr_reg_next_reg[3]_0 [3]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(aw_addr_reg[3]),
        .I3(\aw_state_reg[1]_0 [1]),
        .I4(\aw_state_reg[1]_0 [0]),
        .O(p_1_in[3]));
  FDRE \aw_addr_reg_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(aw_addr_reg_next[0]),
        .R(s00_axi_aresetn));
  FDRE \aw_addr_reg_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(aw_addr_reg_next[1]),
        .R(s00_axi_aresetn));
  FDRE \aw_addr_reg_next_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(aw_addr_reg_next[2]),
        .R(s00_axi_aresetn));
  FDRE \aw_addr_reg_next_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(aw_addr_reg_next[3]),
        .R(s00_axi_aresetn));
  FDCE \aw_addr_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(aw_addr_reg_next[0]),
        .Q(aw_addr_reg[0]));
  FDCE \aw_addr_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(aw_addr_reg_next[1]),
        .Q(aw_addr_reg[1]));
  FDCE \aw_addr_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(aw_addr_reg_next[2]),
        .Q(aw_addr_reg[2]));
  FDCE \aw_addr_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(aw_addr_reg_next[3]),
        .Q(aw_addr_reg[3]));
  LUT5 #(
    .INIT(32'hF5FFF0CF)) 
    \aw_state_next[0]_i_1 
       (.I0(\aw_state_next_reg[1]_0 ),
        .I1(\aw_state_next_reg[0]_0 ),
        .I2(\aw_state_reg[1]_0 [1]),
        .I3(\aw_state_reg[1]_0 [0]),
        .I4(aw_state_next[0]),
        .O(\aw_state_next[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F300A00)) 
    \aw_state_next[1]_i_1 
       (.I0(\aw_state_next_reg[1]_0 ),
        .I1(\aw_state_next_reg[0]_0 ),
        .I2(\aw_state_reg[1]_0 [1]),
        .I3(\aw_state_reg[1]_0 [0]),
        .I4(aw_state_next[1]),
        .O(\aw_state_next[1]_i_1_n_0 ));
  FDSE \aw_state_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\aw_state_next[0]_i_1_n_0 ),
        .Q(aw_state_next[0]),
        .S(s00_axi_aresetn));
  FDRE \aw_state_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\aw_state_next[1]_i_1_n_0 ),
        .Q(aw_state_next[1]),
        .R(s00_axi_aresetn));
  FDPE \aw_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_state_next[0]),
        .PRE(s00_axi_aresetn),
        .Q(\aw_state_reg[1]_0 [0]));
  FDCE \aw_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(aw_state_next[1]),
        .Q(\aw_state_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(\axi_rdata_reg[7]_0 [0]),
        .I1(r_data[0]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[7] [0]),
        .I4(sel0[0]),
        .I5(\w_data_reg_next_reg[31]_0 [0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(\axi_rdata_reg[7]_0 [1]),
        .I1(r_data[1]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[7] [1]),
        .I4(sel0[0]),
        .I5(\w_data_reg_next_reg[31]_0 [1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(\axi_rdata_reg[7]_0 [2]),
        .I1(r_data[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[7] [2]),
        .I4(sel0[0]),
        .I5(\w_data_reg_next_reg[31]_0 [2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(\axi_rdata_reg[7]_0 [3]),
        .I1(r_data[3]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[7] [3]),
        .I4(sel0[0]),
        .I5(\w_data_reg_next_reg[31]_0 [3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(\axi_rdata_reg[7]_0 [4]),
        .I1(r_data[4]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[7] [4]),
        .I4(sel0[0]),
        .I5(\w_data_reg_next_reg[31]_0 [4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(\axi_rdata_reg[7]_0 [5]),
        .I1(r_data[5]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[7] [5]),
        .I4(sel0[0]),
        .I5(\w_data_reg_next_reg[31]_0 [5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(\axi_rdata_reg[7]_0 [6]),
        .I1(r_data[6]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[7] [6]),
        .I4(sel0[0]),
        .I5(\w_data_reg_next_reg[31]_0 [6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(\axi_rdata_reg[7]_0 [7]),
        .I1(r_data[7]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[7] [7]),
        .I4(sel0[0]),
        .I5(\w_data_reg_next_reg[31]_0 [7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .O(D[0]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata_reg[1] ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .O(D[1]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata_reg[2] ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .O(D[2]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata_reg[3] ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .O(D[3]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata_reg[4] ),
        .I1(\axi_rdata[4]_i_3_n_0 ),
        .O(D[4]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata_reg[5] ),
        .I1(\axi_rdata[5]_i_3_n_0 ),
        .O(D[5]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata_reg[6] ),
        .I1(\axi_rdata[6]_i_3_n_0 ),
        .O(D[6]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata_reg[7]_1 ),
        .I1(\axi_rdata[7]_i_3_n_0 ),
        .O(D[7]),
        .S(sel0[2]));
  LUT3 #(
    .INIT(8'h04)) 
    \r_data[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(s00_axi_aresetn),
        .O(\r_data[7]_i_1_n_0 ));
  FDRE \r_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\r_data[7]_i_1_n_0 ),
        .D(r_data_reg[0]),
        .Q(r_data[0]),
        .R(1'b0));
  FDRE \r_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\r_data[7]_i_1_n_0 ),
        .D(r_data_reg[1]),
        .Q(r_data[1]),
        .R(1'b0));
  FDRE \r_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\r_data[7]_i_1_n_0 ),
        .D(r_data_reg[2]),
        .Q(r_data[2]),
        .R(1'b0));
  FDRE \r_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\r_data[7]_i_1_n_0 ),
        .D(r_data_reg[3]),
        .Q(r_data[3]),
        .R(1'b0));
  FDRE \r_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\r_data[7]_i_1_n_0 ),
        .D(r_data_reg[4]),
        .Q(r_data[4]),
        .R(1'b0));
  FDRE \r_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\r_data[7]_i_1_n_0 ),
        .D(r_data_reg[5]),
        .Q(r_data[5]),
        .R(1'b0));
  FDRE \r_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\r_data[7]_i_1_n_0 ),
        .D(r_data_reg[6]),
        .Q(r_data[6]),
        .R(1'b0));
  FDRE \r_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\r_data[7]_i_1_n_0 ),
        .D(r_data_reg[7]),
        .Q(r_data[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \r_data_reg_next[0]_i_1 
       (.I0(\r_data_reg_next_reg[7]_0 [0]),
        .I1(\ar_state_next_reg[1]_0 ),
        .I2(r_data_reg[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\r_data_reg_next[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \r_data_reg_next[1]_i_1 
       (.I0(\r_data_reg_next_reg[7]_0 [1]),
        .I1(\ar_state_next_reg[1]_0 ),
        .I2(r_data_reg[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\r_data_reg_next[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \r_data_reg_next[2]_i_1 
       (.I0(\r_data_reg_next_reg[7]_0 [2]),
        .I1(\ar_state_next_reg[1]_0 ),
        .I2(r_data_reg[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\r_data_reg_next[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \r_data_reg_next[3]_i_1 
       (.I0(\r_data_reg_next_reg[7]_0 [3]),
        .I1(\ar_state_next_reg[1]_0 ),
        .I2(r_data_reg[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\r_data_reg_next[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \r_data_reg_next[4]_i_1 
       (.I0(\r_data_reg_next_reg[7]_0 [4]),
        .I1(\ar_state_next_reg[1]_0 ),
        .I2(r_data_reg[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\r_data_reg_next[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \r_data_reg_next[5]_i_1 
       (.I0(\r_data_reg_next_reg[7]_0 [5]),
        .I1(\ar_state_next_reg[1]_0 ),
        .I2(r_data_reg[5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\r_data_reg_next[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \r_data_reg_next[6]_i_1 
       (.I0(\r_data_reg_next_reg[7]_0 [6]),
        .I1(\ar_state_next_reg[1]_0 ),
        .I2(r_data_reg[6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\r_data_reg_next[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \r_data_reg_next[7]_i_1 
       (.I0(\r_data_reg_next_reg[7]_0 [7]),
        .I1(\ar_state_next_reg[1]_0 ),
        .I2(r_data_reg[7]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\r_data_reg_next[7]_i_1_n_0 ));
  FDRE \r_data_reg_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_data_reg_next[0]_i_1_n_0 ),
        .Q(r_data_reg_next[0]),
        .R(s00_axi_aresetn));
  FDRE \r_data_reg_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_data_reg_next[1]_i_1_n_0 ),
        .Q(r_data_reg_next[1]),
        .R(s00_axi_aresetn));
  FDRE \r_data_reg_next_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_data_reg_next[2]_i_1_n_0 ),
        .Q(r_data_reg_next[2]),
        .R(s00_axi_aresetn));
  FDRE \r_data_reg_next_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_data_reg_next[3]_i_1_n_0 ),
        .Q(r_data_reg_next[3]),
        .R(s00_axi_aresetn));
  FDRE \r_data_reg_next_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_data_reg_next[4]_i_1_n_0 ),
        .Q(r_data_reg_next[4]),
        .R(s00_axi_aresetn));
  FDRE \r_data_reg_next_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_data_reg_next[5]_i_1_n_0 ),
        .Q(r_data_reg_next[5]),
        .R(s00_axi_aresetn));
  FDRE \r_data_reg_next_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_data_reg_next[6]_i_1_n_0 ),
        .Q(r_data_reg_next[6]),
        .R(s00_axi_aresetn));
  FDRE \r_data_reg_next_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_data_reg_next[7]_i_1_n_0 ),
        .Q(r_data_reg_next[7]),
        .R(s00_axi_aresetn));
  FDCE \r_data_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(r_data_reg_next[0]),
        .Q(r_data_reg[0]));
  FDCE \r_data_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(r_data_reg_next[1]),
        .Q(r_data_reg[1]));
  FDCE \r_data_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(r_data_reg_next[2]),
        .Q(r_data_reg[2]));
  FDCE \r_data_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(r_data_reg_next[3]),
        .Q(r_data_reg[3]));
  FDCE \r_data_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(r_data_reg_next[4]),
        .Q(r_data_reg[4]));
  FDCE \r_data_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(r_data_reg_next[5]),
        .Q(r_data_reg[5]));
  FDCE \r_data_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(r_data_reg_next[6]),
        .Q(r_data_reg[6]));
  FDCE \r_data_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(r_data_reg_next[7]),
        .Q(r_data_reg[7]));
  LUT5 #(
    .INIT(32'hF7F73000)) 
    \r_state_next[0]_i_1 
       (.I0(\ar_state_next_reg[1]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(RVALID),
        .I4(r_state_next[0]),
        .O(\r_state_next[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCFFF0808)) 
    \r_state_next[1]_i_1 
       (.I0(\ar_state_next_reg[1]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(RVALID),
        .I4(r_state_next[1]),
        .O(\r_state_next[1]_i_1_n_0 ));
  FDSE \r_state_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_state_next[0]_i_1_n_0 ),
        .Q(r_state_next[0]),
        .S(s00_axi_aresetn));
  FDRE \r_state_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_state_next[1]_i_1_n_0 ),
        .Q(r_state_next[1]),
        .R(s00_axi_aresetn));
  FDPE \r_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_state_next[0]),
        .PRE(s00_axi_aresetn),
        .Q(Q[0]));
  FDCE \r_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(r_state_next[1]),
        .Q(Q[1]));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[0]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [0]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[0]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[10]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [10]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[10]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[11]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [11]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[11]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[12]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [12]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[12]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[13]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [13]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[13]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[14]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [14]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[14]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[15]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [15]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[15]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[16]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [16]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[16]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[17]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [17]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[17]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[18]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [18]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[18]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[19]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [19]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[19]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[1]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [1]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[1]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[20]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [20]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[20]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[21]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [21]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[21]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[22]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [22]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[22]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[23]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [23]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[23]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[24]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [24]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[24]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[25]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [25]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[25]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[26]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [26]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[26]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[27]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [27]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[27]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[28]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [28]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[28]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[29]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [29]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[29]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[2]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [2]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[2]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[30]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [30]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[30]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[31]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [31]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[31]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[3]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [3]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[3]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[4]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [4]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[4]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[5]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [5]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[5]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[6]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [6]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[6]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[7]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [7]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[7]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[8]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [8]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[8]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_data_reg_next[9]_i_1 
       (.I0(\w_data_reg_next_reg[31]_0 [9]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_data_reg[9]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_data_reg_next[9]_i_1_n_0 ));
  FDRE \w_data_reg_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[0]_i_1_n_0 ),
        .Q(w_data_reg_next[0]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[10] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[10]_i_1_n_0 ),
        .Q(w_data_reg_next[10]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[11] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[11]_i_1_n_0 ),
        .Q(w_data_reg_next[11]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[12] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[12]_i_1_n_0 ),
        .Q(w_data_reg_next[12]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[13] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[13]_i_1_n_0 ),
        .Q(w_data_reg_next[13]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[14] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[14]_i_1_n_0 ),
        .Q(w_data_reg_next[14]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[15] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[15]_i_1_n_0 ),
        .Q(w_data_reg_next[15]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[16] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[16]_i_1_n_0 ),
        .Q(w_data_reg_next[16]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[17] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[17]_i_1_n_0 ),
        .Q(w_data_reg_next[17]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[18] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[18]_i_1_n_0 ),
        .Q(w_data_reg_next[18]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[19] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[19]_i_1_n_0 ),
        .Q(w_data_reg_next[19]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[1]_i_1_n_0 ),
        .Q(w_data_reg_next[1]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[20] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[20]_i_1_n_0 ),
        .Q(w_data_reg_next[20]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[21] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[21]_i_1_n_0 ),
        .Q(w_data_reg_next[21]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[22] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[22]_i_1_n_0 ),
        .Q(w_data_reg_next[22]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[23] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[23]_i_1_n_0 ),
        .Q(w_data_reg_next[23]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[24] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[24]_i_1_n_0 ),
        .Q(w_data_reg_next[24]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[25] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[25]_i_1_n_0 ),
        .Q(w_data_reg_next[25]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[26] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[26]_i_1_n_0 ),
        .Q(w_data_reg_next[26]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[27] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[27]_i_1_n_0 ),
        .Q(w_data_reg_next[27]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[28] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[28]_i_1_n_0 ),
        .Q(w_data_reg_next[28]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[29] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[29]_i_1_n_0 ),
        .Q(w_data_reg_next[29]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[2] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[2]_i_1_n_0 ),
        .Q(w_data_reg_next[2]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[30] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[30]_i_1_n_0 ),
        .Q(w_data_reg_next[30]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[31] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[31]_i_1_n_0 ),
        .Q(w_data_reg_next[31]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[3] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[3]_i_1_n_0 ),
        .Q(w_data_reg_next[3]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[4] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[4]_i_1_n_0 ),
        .Q(w_data_reg_next[4]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[5] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[5]_i_1_n_0 ),
        .Q(w_data_reg_next[5]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[6] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[6]_i_1_n_0 ),
        .Q(w_data_reg_next[6]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[7] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[7]_i_1_n_0 ),
        .Q(w_data_reg_next[7]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[8] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[8]_i_1_n_0 ),
        .Q(w_data_reg_next[8]),
        .R(1'b0));
  FDRE \w_data_reg_next_reg[9] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_data_reg_next[9]_i_1_n_0 ),
        .Q(w_data_reg_next[9]),
        .R(1'b0));
  FDCE \w_data_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[0]),
        .Q(w_data_reg[0]));
  FDCE \w_data_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[10]),
        .Q(w_data_reg[10]));
  FDCE \w_data_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[11]),
        .Q(w_data_reg[11]));
  FDCE \w_data_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[12]),
        .Q(w_data_reg[12]));
  FDCE \w_data_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[13]),
        .Q(w_data_reg[13]));
  FDCE \w_data_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[14]),
        .Q(w_data_reg[14]));
  FDCE \w_data_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[15]),
        .Q(w_data_reg[15]));
  FDCE \w_data_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[16]),
        .Q(w_data_reg[16]));
  FDCE \w_data_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[17]),
        .Q(w_data_reg[17]));
  FDCE \w_data_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[18]),
        .Q(w_data_reg[18]));
  FDCE \w_data_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[19]),
        .Q(w_data_reg[19]));
  FDCE \w_data_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[1]),
        .Q(w_data_reg[1]));
  FDCE \w_data_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[20]),
        .Q(w_data_reg[20]));
  FDCE \w_data_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[21]),
        .Q(w_data_reg[21]));
  FDCE \w_data_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[22]),
        .Q(w_data_reg[22]));
  FDCE \w_data_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[23]),
        .Q(w_data_reg[23]));
  FDCE \w_data_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[24]),
        .Q(w_data_reg[24]));
  FDCE \w_data_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[25]),
        .Q(w_data_reg[25]));
  FDCE \w_data_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[26]),
        .Q(w_data_reg[26]));
  FDCE \w_data_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[27]),
        .Q(w_data_reg[27]));
  FDCE \w_data_reg_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[28]),
        .Q(w_data_reg[28]));
  FDCE \w_data_reg_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[29]),
        .Q(w_data_reg[29]));
  FDCE \w_data_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[2]),
        .Q(w_data_reg[2]));
  FDCE \w_data_reg_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[30]),
        .Q(w_data_reg[30]));
  FDCE \w_data_reg_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[31]),
        .Q(w_data_reg[31]));
  FDCE \w_data_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[3]),
        .Q(w_data_reg[3]));
  FDCE \w_data_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[4]),
        .Q(w_data_reg[4]));
  FDCE \w_data_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[5]),
        .Q(w_data_reg[5]));
  FDCE \w_data_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[6]),
        .Q(w_data_reg[6]));
  FDCE \w_data_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[7]),
        .Q(w_data_reg[7]));
  FDCE \w_data_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[8]),
        .Q(w_data_reg[8]));
  FDCE \w_data_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_data_reg_next[9]),
        .Q(w_data_reg[9]));
  LUT5 #(
    .INIT(32'hF5FFF0CF)) 
    \w_state_next[0]_i_1 
       (.I0(\aw_state_next_reg[1]_0 ),
        .I1(WREADY),
        .I2(\w_state_reg[1]_0 [1]),
        .I3(\w_state_reg[1]_0 [0]),
        .I4(w_state_next[0]),
        .O(\w_state_next[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F300A00)) 
    \w_state_next[1]_i_1 
       (.I0(\aw_state_next_reg[1]_0 ),
        .I1(WREADY),
        .I2(\w_state_reg[1]_0 [1]),
        .I3(\w_state_reg[1]_0 [0]),
        .I4(w_state_next[1]),
        .O(\w_state_next[1]_i_1_n_0 ));
  FDSE \w_state_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\w_state_next[0]_i_1_n_0 ),
        .Q(w_state_next[0]),
        .S(s00_axi_aresetn));
  FDRE \w_state_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\w_state_next[1]_i_1_n_0 ),
        .Q(w_state_next[1]),
        .R(s00_axi_aresetn));
  FDPE \w_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(w_state_next[0]),
        .PRE(s00_axi_aresetn),
        .Q(\w_state_reg[1]_0 [0]));
  FDCE \w_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_state_next[1]),
        .Q(\w_state_reg[1]_0 [1]));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_strb_reg_next[0]_i_1 
       (.I0(\axi_rdata_reg[7] [0]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_strb_reg[0]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_strb_reg_next[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_strb_reg_next[1]_i_1 
       (.I0(\axi_rdata_reg[7] [1]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_strb_reg[1]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_strb_reg_next[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_strb_reg_next[2]_i_1 
       (.I0(\axi_rdata_reg[7] [2]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_strb_reg[2]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_strb_reg_next[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0B8F0F0)) 
    \w_strb_reg_next[3]_i_1 
       (.I0(\axi_rdata_reg[7] [3]),
        .I1(\aw_state_next_reg[1]_0 ),
        .I2(w_strb_reg[3]),
        .I3(\w_state_reg[1]_0 [1]),
        .I4(\w_state_reg[1]_0 [0]),
        .O(\w_strb_reg_next[3]_i_1_n_0 ));
  FDRE \w_strb_reg_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_strb_reg_next[0]_i_1_n_0 ),
        .Q(w_strb_reg_next[0]),
        .R(1'b0));
  FDRE \w_strb_reg_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_strb_reg_next[1]_i_1_n_0 ),
        .Q(w_strb_reg_next[1]),
        .R(1'b0));
  FDRE \w_strb_reg_next_reg[2] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_strb_reg_next[2]_i_1_n_0 ),
        .Q(w_strb_reg_next[2]),
        .R(1'b0));
  FDRE \w_strb_reg_next_reg[3] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(\w_strb_reg_next[3]_i_1_n_0 ),
        .Q(w_strb_reg_next[3]),
        .R(1'b0));
  FDCE \w_strb_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_strb_reg_next[0]),
        .Q(w_strb_reg[0]));
  FDCE \w_strb_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_strb_reg_next[1]),
        .Q(w_strb_reg[1]));
  FDCE \w_strb_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_strb_reg_next[2]),
        .Q(w_strb_reg[2]));
  FDCE \w_strb_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(w_strb_reg_next[3]),
        .Q(w_strb_reg[3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slave
   (ARREADY,
    AWREADY_reg_0,
    WREADY,
    RVALID,
    Q,
    \aw_state_reg[1]_0 ,
    \r_state_reg[1]_0 ,
    SR,
    \RDATA_reg[7]_0 ,
    led,
    s00_axi_aresetn,
    s00_axi_aclk,
    AWREADY_reg_1,
    WREADY_reg_0,
    RVALID_reg_0,
    \write_data_reg_next_reg[31]_0 ,
    \w_strb_reg_next_reg[3]_0 ,
    \w_strb_reg_next_reg[3]_1 ,
    AWVALID,
    ARVALID,
    RREADY,
    D,
    \ar_addr_reg_next_reg[3]_0 );
  output ARREADY;
  output AWREADY_reg_0;
  output WREADY;
  output RVALID;
  output [1:0]Q;
  output [1:0]\aw_state_reg[1]_0 ;
  output [1:0]\r_state_reg[1]_0 ;
  output [0:0]SR;
  output [7:0]\RDATA_reg[7]_0 ;
  output [15:0]led;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input AWREADY_reg_1;
  input WREADY_reg_0;
  input RVALID_reg_0;
  input [31:0]\write_data_reg_next_reg[31]_0 ;
  input \w_strb_reg_next_reg[3]_0 ;
  input [3:0]\w_strb_reg_next_reg[3]_1 ;
  input AWVALID;
  input ARVALID;
  input RREADY;
  input [3:0]D;
  input [3:0]\ar_addr_reg_next_reg[3]_0 ;

  wire ARREADY;
  wire ARREADY_i_1_n_0;
  wire ARVALID;
  wire AWREADY_reg_0;
  wire AWREADY_reg_1;
  wire AWVALID;
  wire [3:0]D;
  wire [1:0]Q;
  wire \RDATA[0]_i_4_n_0 ;
  wire \RDATA[0]_i_5_n_0 ;
  wire \RDATA[0]_i_6_n_0 ;
  wire \RDATA[0]_i_7_n_0 ;
  wire \RDATA[1]_i_4_n_0 ;
  wire \RDATA[1]_i_5_n_0 ;
  wire \RDATA[1]_i_6_n_0 ;
  wire \RDATA[1]_i_7_n_0 ;
  wire \RDATA[2]_i_4_n_0 ;
  wire \RDATA[2]_i_5_n_0 ;
  wire \RDATA[2]_i_6_n_0 ;
  wire \RDATA[2]_i_7_n_0 ;
  wire \RDATA[3]_i_4_n_0 ;
  wire \RDATA[3]_i_5_n_0 ;
  wire \RDATA[3]_i_6_n_0 ;
  wire \RDATA[3]_i_7_n_0 ;
  wire \RDATA[4]_i_4_n_0 ;
  wire \RDATA[4]_i_5_n_0 ;
  wire \RDATA[4]_i_6_n_0 ;
  wire \RDATA[4]_i_7_n_0 ;
  wire \RDATA[5]_i_4_n_0 ;
  wire \RDATA[5]_i_5_n_0 ;
  wire \RDATA[5]_i_6_n_0 ;
  wire \RDATA[5]_i_7_n_0 ;
  wire \RDATA[6]_i_4_n_0 ;
  wire \RDATA[6]_i_5_n_0 ;
  wire \RDATA[6]_i_6_n_0 ;
  wire \RDATA[6]_i_7_n_0 ;
  wire \RDATA[7]_i_1_n_0 ;
  wire \RDATA[7]_i_5_n_0 ;
  wire \RDATA[7]_i_6_n_0 ;
  wire \RDATA[7]_i_7_n_0 ;
  wire \RDATA[7]_i_8_n_0 ;
  wire \RDATA_reg[0]_i_1_n_0 ;
  wire \RDATA_reg[0]_i_2_n_0 ;
  wire \RDATA_reg[0]_i_3_n_0 ;
  wire \RDATA_reg[1]_i_1_n_0 ;
  wire \RDATA_reg[1]_i_2_n_0 ;
  wire \RDATA_reg[1]_i_3_n_0 ;
  wire \RDATA_reg[2]_i_1_n_0 ;
  wire \RDATA_reg[2]_i_2_n_0 ;
  wire \RDATA_reg[2]_i_3_n_0 ;
  wire \RDATA_reg[3]_i_1_n_0 ;
  wire \RDATA_reg[3]_i_2_n_0 ;
  wire \RDATA_reg[3]_i_3_n_0 ;
  wire \RDATA_reg[4]_i_1_n_0 ;
  wire \RDATA_reg[4]_i_2_n_0 ;
  wire \RDATA_reg[4]_i_3_n_0 ;
  wire \RDATA_reg[5]_i_1_n_0 ;
  wire \RDATA_reg[5]_i_2_n_0 ;
  wire \RDATA_reg[5]_i_3_n_0 ;
  wire \RDATA_reg[6]_i_1_n_0 ;
  wire \RDATA_reg[6]_i_2_n_0 ;
  wire \RDATA_reg[6]_i_3_n_0 ;
  wire [7:0]\RDATA_reg[7]_0 ;
  wire \RDATA_reg[7]_i_2_n_0 ;
  wire \RDATA_reg[7]_i_3_n_0 ;
  wire \RDATA_reg[7]_i_4_n_0 ;
  wire RREADY;
  wire RVALID;
  wire RVALID_reg_0;
  wire [0:0]SR;
  wire WREADY;
  wire WREADY_reg_0;
  wire [3:0]ar_addr_reg;
  wire \ar_addr_reg_next[3]_i_1__0_n_0 ;
  wire [3:0]\ar_addr_reg_next_reg[3]_0 ;
  wire \ar_addr_reg_next_reg_n_0_[0] ;
  wire \ar_addr_reg_next_reg_n_0_[1] ;
  wire \ar_addr_reg_next_reg_n_0_[2] ;
  wire \ar_addr_reg_next_reg_n_0_[3] ;
  wire [1:0]ar_state_next;
  wire \ar_state_next[0]_i_1__0_n_0 ;
  wire \ar_state_next[1]_i_1__0_n_0 ;
  wire \ar_state_reg_n_0_[0] ;
  wire \ar_state_reg_n_0_[1] ;
  wire \aw_addr_reg_next[3]_i_1__0_n_0 ;
  wire [3:0]aw_addr_reg_next__0;
  wire \aw_addr_reg_reg_n_0_[0] ;
  wire \aw_addr_reg_reg_n_0_[1] ;
  wire \aw_addr_reg_reg_n_0_[2] ;
  wire \aw_addr_reg_reg_n_0_[3] ;
  wire [1:0]aw_state_next;
  wire \aw_state_next[0]_i_1__0_n_0 ;
  wire \aw_state_next[1]_i_1__0_n_0 ;
  wire [1:0]\aw_state_reg[1]_0 ;
  wire [15:0]led;
  wire \led[15]_i_1_n_0 ;
  wire \led[7]_i_1_n_0 ;
  wire p_0_in;
  wire [7:0]p_0_in__5;
  wire [7:0]p_6_in;
  wire [1:0]r_state_next;
  wire \r_state_next[0]_i_1__0_n_0 ;
  wire \r_state_next[1]_i_1__0_n_0 ;
  wire [1:0]\r_state_reg[1]_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \slave_memory[0][0]_i_1_n_0 ;
  wire \slave_memory[0][1]_i_1_n_0 ;
  wire \slave_memory[0][2]_i_1_n_0 ;
  wire \slave_memory[0][3]_i_1_n_0 ;
  wire \slave_memory[0][4]_i_1_n_0 ;
  wire \slave_memory[0][5]_i_1_n_0 ;
  wire \slave_memory[0][6]_i_1_n_0 ;
  wire \slave_memory[0][7]_i_1_n_0 ;
  wire \slave_memory[0][7]_i_2_n_0 ;
  wire \slave_memory[10][0]_i_1_n_0 ;
  wire \slave_memory[10][1]_i_1_n_0 ;
  wire \slave_memory[10][2]_i_1_n_0 ;
  wire \slave_memory[10][3]_i_1_n_0 ;
  wire \slave_memory[10][4]_i_1_n_0 ;
  wire \slave_memory[10][5]_i_1_n_0 ;
  wire \slave_memory[10][6]_i_1_n_0 ;
  wire \slave_memory[10][7]_i_1_n_0 ;
  wire \slave_memory[10][7]_i_2_n_0 ;
  wire \slave_memory[11][0]_i_1_n_0 ;
  wire \slave_memory[11][1]_i_1_n_0 ;
  wire \slave_memory[11][2]_i_1_n_0 ;
  wire \slave_memory[11][3]_i_1_n_0 ;
  wire \slave_memory[11][4]_i_1_n_0 ;
  wire \slave_memory[11][5]_i_1_n_0 ;
  wire \slave_memory[11][6]_i_1_n_0 ;
  wire \slave_memory[11][7]_i_1_n_0 ;
  wire \slave_memory[11][7]_i_2_n_0 ;
  wire \slave_memory[12][0]_i_1_n_0 ;
  wire \slave_memory[12][1]_i_1_n_0 ;
  wire \slave_memory[12][2]_i_1_n_0 ;
  wire \slave_memory[12][3]_i_1_n_0 ;
  wire \slave_memory[12][4]_i_1_n_0 ;
  wire \slave_memory[12][5]_i_1_n_0 ;
  wire \slave_memory[12][6]_i_1_n_0 ;
  wire \slave_memory[12][7]_i_1_n_0 ;
  wire \slave_memory[12][7]_i_2_n_0 ;
  wire \slave_memory[13][0]_i_1_n_0 ;
  wire \slave_memory[13][1]_i_1_n_0 ;
  wire \slave_memory[13][2]_i_1_n_0 ;
  wire \slave_memory[13][3]_i_1_n_0 ;
  wire \slave_memory[13][4]_i_1_n_0 ;
  wire \slave_memory[13][5]_i_1_n_0 ;
  wire \slave_memory[13][6]_i_1_n_0 ;
  wire \slave_memory[13][7]_i_1_n_0 ;
  wire \slave_memory[13][7]_i_2_n_0 ;
  wire \slave_memory[14][0]_i_2_n_0 ;
  wire \slave_memory[14][0]_i_5_n_0 ;
  wire \slave_memory[14][0]_i_6_n_0 ;
  wire \slave_memory[14][0]_i_7_n_0 ;
  wire \slave_memory[14][0]_i_8_n_0 ;
  wire \slave_memory[14][1]_i_2_n_0 ;
  wire \slave_memory[14][1]_i_5_n_0 ;
  wire \slave_memory[14][1]_i_6_n_0 ;
  wire \slave_memory[14][1]_i_7_n_0 ;
  wire \slave_memory[14][1]_i_8_n_0 ;
  wire \slave_memory[14][2]_i_2_n_0 ;
  wire \slave_memory[14][2]_i_5_n_0 ;
  wire \slave_memory[14][2]_i_6_n_0 ;
  wire \slave_memory[14][2]_i_7_n_0 ;
  wire \slave_memory[14][2]_i_8_n_0 ;
  wire \slave_memory[14][3]_i_2_n_0 ;
  wire \slave_memory[14][3]_i_5_n_0 ;
  wire \slave_memory[14][3]_i_6_n_0 ;
  wire \slave_memory[14][3]_i_7_n_0 ;
  wire \slave_memory[14][3]_i_8_n_0 ;
  wire \slave_memory[14][4]_i_2_n_0 ;
  wire \slave_memory[14][4]_i_5_n_0 ;
  wire \slave_memory[14][4]_i_6_n_0 ;
  wire \slave_memory[14][4]_i_7_n_0 ;
  wire \slave_memory[14][4]_i_8_n_0 ;
  wire \slave_memory[14][5]_i_2_n_0 ;
  wire \slave_memory[14][5]_i_5_n_0 ;
  wire \slave_memory[14][5]_i_6_n_0 ;
  wire \slave_memory[14][5]_i_7_n_0 ;
  wire \slave_memory[14][5]_i_8_n_0 ;
  wire \slave_memory[14][6]_i_2_n_0 ;
  wire \slave_memory[14][6]_i_5_n_0 ;
  wire \slave_memory[14][6]_i_6_n_0 ;
  wire \slave_memory[14][6]_i_7_n_0 ;
  wire \slave_memory[14][6]_i_8_n_0 ;
  wire \slave_memory[14][7]_i_10_n_0 ;
  wire \slave_memory[14][7]_i_11_n_0 ;
  wire \slave_memory[14][7]_i_1_n_0 ;
  wire \slave_memory[14][7]_i_3_n_0 ;
  wire \slave_memory[14][7]_i_4_n_0 ;
  wire \slave_memory[14][7]_i_5_n_0 ;
  wire \slave_memory[14][7]_i_8_n_0 ;
  wire \slave_memory[14][7]_i_9_n_0 ;
  wire \slave_memory[15][0]_i_1_n_0 ;
  wire \slave_memory[15][1]_i_1_n_0 ;
  wire \slave_memory[15][2]_i_1_n_0 ;
  wire \slave_memory[15][3]_i_1_n_0 ;
  wire \slave_memory[15][4]_i_1_n_0 ;
  wire \slave_memory[15][5]_i_1_n_0 ;
  wire \slave_memory[15][6]_i_1_n_0 ;
  wire \slave_memory[15][7]_i_1_n_0 ;
  wire \slave_memory[1][0]_i_1_n_0 ;
  wire \slave_memory[1][1]_i_1_n_0 ;
  wire \slave_memory[1][2]_i_1_n_0 ;
  wire \slave_memory[1][3]_i_1_n_0 ;
  wire \slave_memory[1][4]_i_1_n_0 ;
  wire \slave_memory[1][5]_i_1_n_0 ;
  wire \slave_memory[1][6]_i_1_n_0 ;
  wire \slave_memory[1][7]_i_1_n_0 ;
  wire \slave_memory[1][7]_i_2_n_0 ;
  wire \slave_memory[2][0]_i_1_n_0 ;
  wire \slave_memory[2][1]_i_1_n_0 ;
  wire \slave_memory[2][2]_i_1_n_0 ;
  wire \slave_memory[2][3]_i_1_n_0 ;
  wire \slave_memory[2][4]_i_1_n_0 ;
  wire \slave_memory[2][5]_i_1_n_0 ;
  wire \slave_memory[2][6]_i_1_n_0 ;
  wire \slave_memory[2][7]_i_1_n_0 ;
  wire \slave_memory[2][7]_i_2_n_0 ;
  wire \slave_memory[3][0]_i_1_n_0 ;
  wire \slave_memory[3][1]_i_1_n_0 ;
  wire \slave_memory[3][2]_i_1_n_0 ;
  wire \slave_memory[3][3]_i_1_n_0 ;
  wire \slave_memory[3][4]_i_1_n_0 ;
  wire \slave_memory[3][5]_i_1_n_0 ;
  wire \slave_memory[3][6]_i_1_n_0 ;
  wire \slave_memory[3][7]_i_1_n_0 ;
  wire \slave_memory[3][7]_i_2_n_0 ;
  wire \slave_memory[4][0]_i_1_n_0 ;
  wire \slave_memory[4][1]_i_1_n_0 ;
  wire \slave_memory[4][2]_i_1_n_0 ;
  wire \slave_memory[4][3]_i_1_n_0 ;
  wire \slave_memory[4][4]_i_1_n_0 ;
  wire \slave_memory[4][5]_i_1_n_0 ;
  wire \slave_memory[4][6]_i_1_n_0 ;
  wire \slave_memory[4][7]_i_1_n_0 ;
  wire \slave_memory[4][7]_i_2_n_0 ;
  wire \slave_memory[5][0]_i_1_n_0 ;
  wire \slave_memory[5][1]_i_1_n_0 ;
  wire \slave_memory[5][2]_i_1_n_0 ;
  wire \slave_memory[5][3]_i_1_n_0 ;
  wire \slave_memory[5][4]_i_1_n_0 ;
  wire \slave_memory[5][5]_i_1_n_0 ;
  wire \slave_memory[5][6]_i_1_n_0 ;
  wire \slave_memory[5][7]_i_1_n_0 ;
  wire \slave_memory[5][7]_i_2_n_0 ;
  wire \slave_memory[6][0]_i_1_n_0 ;
  wire \slave_memory[6][1]_i_1_n_0 ;
  wire \slave_memory[6][2]_i_1_n_0 ;
  wire \slave_memory[6][3]_i_1_n_0 ;
  wire \slave_memory[6][4]_i_1_n_0 ;
  wire \slave_memory[6][5]_i_1_n_0 ;
  wire \slave_memory[6][6]_i_1_n_0 ;
  wire \slave_memory[6][7]_i_1_n_0 ;
  wire \slave_memory[6][7]_i_2_n_0 ;
  wire \slave_memory[7][0]_i_1_n_0 ;
  wire \slave_memory[7][1]_i_1_n_0 ;
  wire \slave_memory[7][2]_i_1_n_0 ;
  wire \slave_memory[7][3]_i_1_n_0 ;
  wire \slave_memory[7][4]_i_1_n_0 ;
  wire \slave_memory[7][5]_i_1_n_0 ;
  wire \slave_memory[7][6]_i_1_n_0 ;
  wire \slave_memory[7][7]_i_1_n_0 ;
  wire \slave_memory[7][7]_i_2_n_0 ;
  wire \slave_memory[8][0]_i_1_n_0 ;
  wire \slave_memory[8][1]_i_1_n_0 ;
  wire \slave_memory[8][2]_i_1_n_0 ;
  wire \slave_memory[8][3]_i_1_n_0 ;
  wire \slave_memory[8][4]_i_1_n_0 ;
  wire \slave_memory[8][5]_i_1_n_0 ;
  wire \slave_memory[8][6]_i_1_n_0 ;
  wire \slave_memory[8][7]_i_1_n_0 ;
  wire \slave_memory[8][7]_i_2_n_0 ;
  wire \slave_memory[9][0]_i_1_n_0 ;
  wire \slave_memory[9][1]_i_1_n_0 ;
  wire \slave_memory[9][2]_i_1_n_0 ;
  wire \slave_memory[9][3]_i_1_n_0 ;
  wire \slave_memory[9][4]_i_1_n_0 ;
  wire \slave_memory[9][5]_i_1_n_0 ;
  wire \slave_memory[9][6]_i_1_n_0 ;
  wire \slave_memory[9][7]_i_1_n_0 ;
  wire \slave_memory[9][7]_i_2_n_0 ;
  wire [7:0]\slave_memory_reg[0]_14 ;
  wire [7:0]\slave_memory_reg[10]_4 ;
  wire [7:0]\slave_memory_reg[11]_3 ;
  wire [7:0]\slave_memory_reg[12]_2 ;
  wire [7:0]\slave_memory_reg[13]_1 ;
  wire \slave_memory_reg[14][0]_i_3_n_0 ;
  wire \slave_memory_reg[14][0]_i_4_n_0 ;
  wire \slave_memory_reg[14][1]_i_3_n_0 ;
  wire \slave_memory_reg[14][1]_i_4_n_0 ;
  wire \slave_memory_reg[14][2]_i_3_n_0 ;
  wire \slave_memory_reg[14][2]_i_4_n_0 ;
  wire \slave_memory_reg[14][3]_i_3_n_0 ;
  wire \slave_memory_reg[14][3]_i_4_n_0 ;
  wire \slave_memory_reg[14][4]_i_3_n_0 ;
  wire \slave_memory_reg[14][4]_i_4_n_0 ;
  wire \slave_memory_reg[14][5]_i_3_n_0 ;
  wire \slave_memory_reg[14][5]_i_4_n_0 ;
  wire \slave_memory_reg[14][6]_i_3_n_0 ;
  wire \slave_memory_reg[14][6]_i_4_n_0 ;
  wire \slave_memory_reg[14][7]_i_6_n_0 ;
  wire \slave_memory_reg[14][7]_i_7_n_0 ;
  wire [7:0]\slave_memory_reg[14]_0 ;
  wire [7:0]\slave_memory_reg[15]_15 ;
  wire [7:0]\slave_memory_reg[1]_13 ;
  wire [7:0]\slave_memory_reg[2]_12 ;
  wire [7:0]\slave_memory_reg[3]_11 ;
  wire [7:0]\slave_memory_reg[4]_10 ;
  wire [7:0]\slave_memory_reg[5]_9 ;
  wire [7:0]\slave_memory_reg[6]_8 ;
  wire [7:0]\slave_memory_reg[7]_7 ;
  wire [7:0]\slave_memory_reg[8]_6 ;
  wire [7:0]\slave_memory_reg[9]_5 ;
  wire [3:0]w_strb_reg_next;
  wire \w_strb_reg_next_reg[3]_0 ;
  wire [3:0]\w_strb_reg_next_reg[3]_1 ;
  wire \w_strb_reg_next_reg_n_0_[0] ;
  wire \w_strb_reg_next_reg_n_0_[1] ;
  wire \w_strb_reg_next_reg_n_0_[2] ;
  wire \w_strb_reg_next_reg_n_0_[3] ;
  wire \w_strb_reg_reg_n_0_[1] ;
  wire \w_strb_reg_reg_n_0_[2] ;
  wire \w_strb_reg_reg_n_0_[3] ;
  wire [31:0]write_data_reg_next;
  wire [31:0]\write_data_reg_next_reg[31]_0 ;
  wire \write_data_reg_next_reg_n_0_[0] ;
  wire \write_data_reg_next_reg_n_0_[10] ;
  wire \write_data_reg_next_reg_n_0_[11] ;
  wire \write_data_reg_next_reg_n_0_[12] ;
  wire \write_data_reg_next_reg_n_0_[13] ;
  wire \write_data_reg_next_reg_n_0_[14] ;
  wire \write_data_reg_next_reg_n_0_[15] ;
  wire \write_data_reg_next_reg_n_0_[16] ;
  wire \write_data_reg_next_reg_n_0_[17] ;
  wire \write_data_reg_next_reg_n_0_[18] ;
  wire \write_data_reg_next_reg_n_0_[19] ;
  wire \write_data_reg_next_reg_n_0_[1] ;
  wire \write_data_reg_next_reg_n_0_[20] ;
  wire \write_data_reg_next_reg_n_0_[21] ;
  wire \write_data_reg_next_reg_n_0_[22] ;
  wire \write_data_reg_next_reg_n_0_[23] ;
  wire \write_data_reg_next_reg_n_0_[24] ;
  wire \write_data_reg_next_reg_n_0_[25] ;
  wire \write_data_reg_next_reg_n_0_[26] ;
  wire \write_data_reg_next_reg_n_0_[27] ;
  wire \write_data_reg_next_reg_n_0_[28] ;
  wire \write_data_reg_next_reg_n_0_[29] ;
  wire \write_data_reg_next_reg_n_0_[2] ;
  wire \write_data_reg_next_reg_n_0_[30] ;
  wire \write_data_reg_next_reg_n_0_[31] ;
  wire \write_data_reg_next_reg_n_0_[3] ;
  wire \write_data_reg_next_reg_n_0_[4] ;
  wire \write_data_reg_next_reg_n_0_[5] ;
  wire \write_data_reg_next_reg_n_0_[6] ;
  wire \write_data_reg_next_reg_n_0_[7] ;
  wire \write_data_reg_next_reg_n_0_[8] ;
  wire \write_data_reg_next_reg_n_0_[9] ;
  wire \write_data_reg_reg_n_0_[0] ;
  wire \write_data_reg_reg_n_0_[10] ;
  wire \write_data_reg_reg_n_0_[11] ;
  wire \write_data_reg_reg_n_0_[12] ;
  wire \write_data_reg_reg_n_0_[13] ;
  wire \write_data_reg_reg_n_0_[14] ;
  wire \write_data_reg_reg_n_0_[15] ;
  wire \write_data_reg_reg_n_0_[16] ;
  wire \write_data_reg_reg_n_0_[17] ;
  wire \write_data_reg_reg_n_0_[18] ;
  wire \write_data_reg_reg_n_0_[19] ;
  wire \write_data_reg_reg_n_0_[1] ;
  wire \write_data_reg_reg_n_0_[20] ;
  wire \write_data_reg_reg_n_0_[21] ;
  wire \write_data_reg_reg_n_0_[22] ;
  wire \write_data_reg_reg_n_0_[23] ;
  wire \write_data_reg_reg_n_0_[2] ;
  wire \write_data_reg_reg_n_0_[3] ;
  wire \write_data_reg_reg_n_0_[4] ;
  wire \write_data_reg_reg_n_0_[5] ;
  wire \write_data_reg_reg_n_0_[6] ;
  wire \write_data_reg_reg_n_0_[7] ;
  wire \write_data_reg_reg_n_0_[8] ;
  wire \write_data_reg_reg_n_0_[9] ;
  wire [1:0]write_state_next;
  wire \write_state_next[0]_i_1_n_0 ;
  wire \write_state_next[1]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ARREADY_i_1
       (.I0(\ar_state_reg_n_0_[1] ),
        .I1(\ar_state_reg_n_0_[0] ),
        .O(ARREADY_i_1_n_0));
  FDRE ARREADY_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ARREADY_i_1_n_0),
        .Q(ARREADY),
        .R(s00_axi_aresetn));
  FDRE AWREADY_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(AWREADY_reg_1),
        .Q(AWREADY_reg_0),
        .R(s00_axi_aresetn));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[0]_i_4 
       (.I0(\slave_memory_reg[3]_11 [0]),
        .I1(\slave_memory_reg[2]_12 [0]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[1]_13 [0]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[0]_14 [0]),
        .O(\RDATA[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[0]_i_5 
       (.I0(\slave_memory_reg[7]_7 [0]),
        .I1(\slave_memory_reg[6]_8 [0]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[5]_9 [0]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[4]_10 [0]),
        .O(\RDATA[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[0]_i_6 
       (.I0(\slave_memory_reg[11]_3 [0]),
        .I1(\slave_memory_reg[10]_4 [0]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[9]_5 [0]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[8]_6 [0]),
        .O(\RDATA[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[0]_i_7 
       (.I0(\slave_memory_reg[15]_15 [0]),
        .I1(\slave_memory_reg[14]_0 [0]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[13]_1 [0]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[12]_2 [0]),
        .O(\RDATA[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[1]_i_4 
       (.I0(\slave_memory_reg[3]_11 [1]),
        .I1(\slave_memory_reg[2]_12 [1]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[1]_13 [1]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[0]_14 [1]),
        .O(\RDATA[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[1]_i_5 
       (.I0(\slave_memory_reg[7]_7 [1]),
        .I1(\slave_memory_reg[6]_8 [1]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[5]_9 [1]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[4]_10 [1]),
        .O(\RDATA[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[1]_i_6 
       (.I0(\slave_memory_reg[11]_3 [1]),
        .I1(\slave_memory_reg[10]_4 [1]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[9]_5 [1]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[8]_6 [1]),
        .O(\RDATA[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[1]_i_7 
       (.I0(\slave_memory_reg[15]_15 [1]),
        .I1(\slave_memory_reg[14]_0 [1]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[13]_1 [1]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[12]_2 [1]),
        .O(\RDATA[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[2]_i_4 
       (.I0(\slave_memory_reg[3]_11 [2]),
        .I1(\slave_memory_reg[2]_12 [2]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[1]_13 [2]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[0]_14 [2]),
        .O(\RDATA[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[2]_i_5 
       (.I0(\slave_memory_reg[7]_7 [2]),
        .I1(\slave_memory_reg[6]_8 [2]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[5]_9 [2]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[4]_10 [2]),
        .O(\RDATA[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[2]_i_6 
       (.I0(\slave_memory_reg[11]_3 [2]),
        .I1(\slave_memory_reg[10]_4 [2]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[9]_5 [2]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[8]_6 [2]),
        .O(\RDATA[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[2]_i_7 
       (.I0(\slave_memory_reg[15]_15 [2]),
        .I1(\slave_memory_reg[14]_0 [2]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[13]_1 [2]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[12]_2 [2]),
        .O(\RDATA[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[3]_i_4 
       (.I0(\slave_memory_reg[3]_11 [3]),
        .I1(\slave_memory_reg[2]_12 [3]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[1]_13 [3]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[0]_14 [3]),
        .O(\RDATA[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[3]_i_5 
       (.I0(\slave_memory_reg[7]_7 [3]),
        .I1(\slave_memory_reg[6]_8 [3]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[5]_9 [3]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[4]_10 [3]),
        .O(\RDATA[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[3]_i_6 
       (.I0(\slave_memory_reg[11]_3 [3]),
        .I1(\slave_memory_reg[10]_4 [3]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[9]_5 [3]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[8]_6 [3]),
        .O(\RDATA[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[3]_i_7 
       (.I0(\slave_memory_reg[15]_15 [3]),
        .I1(\slave_memory_reg[14]_0 [3]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[13]_1 [3]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[12]_2 [3]),
        .O(\RDATA[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[4]_i_4 
       (.I0(\slave_memory_reg[3]_11 [4]),
        .I1(\slave_memory_reg[2]_12 [4]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[1]_13 [4]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[0]_14 [4]),
        .O(\RDATA[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[4]_i_5 
       (.I0(\slave_memory_reg[7]_7 [4]),
        .I1(\slave_memory_reg[6]_8 [4]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[5]_9 [4]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[4]_10 [4]),
        .O(\RDATA[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[4]_i_6 
       (.I0(\slave_memory_reg[11]_3 [4]),
        .I1(\slave_memory_reg[10]_4 [4]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[9]_5 [4]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[8]_6 [4]),
        .O(\RDATA[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[4]_i_7 
       (.I0(\slave_memory_reg[15]_15 [4]),
        .I1(\slave_memory_reg[14]_0 [4]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[13]_1 [4]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[12]_2 [4]),
        .O(\RDATA[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[5]_i_4 
       (.I0(\slave_memory_reg[3]_11 [5]),
        .I1(\slave_memory_reg[2]_12 [5]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[1]_13 [5]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[0]_14 [5]),
        .O(\RDATA[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[5]_i_5 
       (.I0(\slave_memory_reg[7]_7 [5]),
        .I1(\slave_memory_reg[6]_8 [5]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[5]_9 [5]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[4]_10 [5]),
        .O(\RDATA[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[5]_i_6 
       (.I0(\slave_memory_reg[11]_3 [5]),
        .I1(\slave_memory_reg[10]_4 [5]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[9]_5 [5]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[8]_6 [5]),
        .O(\RDATA[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[5]_i_7 
       (.I0(\slave_memory_reg[15]_15 [5]),
        .I1(\slave_memory_reg[14]_0 [5]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[13]_1 [5]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[12]_2 [5]),
        .O(\RDATA[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[6]_i_4 
       (.I0(\slave_memory_reg[3]_11 [6]),
        .I1(\slave_memory_reg[2]_12 [6]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[1]_13 [6]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[0]_14 [6]),
        .O(\RDATA[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[6]_i_5 
       (.I0(\slave_memory_reg[7]_7 [6]),
        .I1(\slave_memory_reg[6]_8 [6]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[5]_9 [6]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[4]_10 [6]),
        .O(\RDATA[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[6]_i_6 
       (.I0(\slave_memory_reg[11]_3 [6]),
        .I1(\slave_memory_reg[10]_4 [6]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[9]_5 [6]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[8]_6 [6]),
        .O(\RDATA[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[6]_i_7 
       (.I0(\slave_memory_reg[15]_15 [6]),
        .I1(\slave_memory_reg[14]_0 [6]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[13]_1 [6]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[12]_2 [6]),
        .O(\RDATA[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \RDATA[7]_i_1 
       (.I0(\r_state_reg[1]_0 [1]),
        .I1(\r_state_reg[1]_0 [0]),
        .O(\RDATA[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[7]_i_5 
       (.I0(\slave_memory_reg[3]_11 [7]),
        .I1(\slave_memory_reg[2]_12 [7]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[1]_13 [7]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[0]_14 [7]),
        .O(\RDATA[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[7]_i_6 
       (.I0(\slave_memory_reg[7]_7 [7]),
        .I1(\slave_memory_reg[6]_8 [7]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[5]_9 [7]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[4]_10 [7]),
        .O(\RDATA[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[7]_i_7 
       (.I0(\slave_memory_reg[11]_3 [7]),
        .I1(\slave_memory_reg[10]_4 [7]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[9]_5 [7]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[8]_6 [7]),
        .O(\RDATA[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RDATA[7]_i_8 
       (.I0(\slave_memory_reg[15]_15 [7]),
        .I1(\slave_memory_reg[14]_0 [7]),
        .I2(ar_addr_reg[1]),
        .I3(\slave_memory_reg[13]_1 [7]),
        .I4(ar_addr_reg[0]),
        .I5(\slave_memory_reg[12]_2 [7]),
        .O(\RDATA[7]_i_8_n_0 ));
  FDRE \RDATA_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\RDATA[7]_i_1_n_0 ),
        .D(\RDATA_reg[0]_i_1_n_0 ),
        .Q(\RDATA_reg[7]_0 [0]),
        .R(s00_axi_aresetn));
  MUXF8 \RDATA_reg[0]_i_1 
       (.I0(\RDATA_reg[0]_i_2_n_0 ),
        .I1(\RDATA_reg[0]_i_3_n_0 ),
        .O(\RDATA_reg[0]_i_1_n_0 ),
        .S(ar_addr_reg[3]));
  MUXF7 \RDATA_reg[0]_i_2 
       (.I0(\RDATA[0]_i_4_n_0 ),
        .I1(\RDATA[0]_i_5_n_0 ),
        .O(\RDATA_reg[0]_i_2_n_0 ),
        .S(ar_addr_reg[2]));
  MUXF7 \RDATA_reg[0]_i_3 
       (.I0(\RDATA[0]_i_6_n_0 ),
        .I1(\RDATA[0]_i_7_n_0 ),
        .O(\RDATA_reg[0]_i_3_n_0 ),
        .S(ar_addr_reg[2]));
  FDRE \RDATA_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\RDATA[7]_i_1_n_0 ),
        .D(\RDATA_reg[1]_i_1_n_0 ),
        .Q(\RDATA_reg[7]_0 [1]),
        .R(s00_axi_aresetn));
  MUXF8 \RDATA_reg[1]_i_1 
       (.I0(\RDATA_reg[1]_i_2_n_0 ),
        .I1(\RDATA_reg[1]_i_3_n_0 ),
        .O(\RDATA_reg[1]_i_1_n_0 ),
        .S(ar_addr_reg[3]));
  MUXF7 \RDATA_reg[1]_i_2 
       (.I0(\RDATA[1]_i_4_n_0 ),
        .I1(\RDATA[1]_i_5_n_0 ),
        .O(\RDATA_reg[1]_i_2_n_0 ),
        .S(ar_addr_reg[2]));
  MUXF7 \RDATA_reg[1]_i_3 
       (.I0(\RDATA[1]_i_6_n_0 ),
        .I1(\RDATA[1]_i_7_n_0 ),
        .O(\RDATA_reg[1]_i_3_n_0 ),
        .S(ar_addr_reg[2]));
  FDRE \RDATA_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\RDATA[7]_i_1_n_0 ),
        .D(\RDATA_reg[2]_i_1_n_0 ),
        .Q(\RDATA_reg[7]_0 [2]),
        .R(s00_axi_aresetn));
  MUXF8 \RDATA_reg[2]_i_1 
       (.I0(\RDATA_reg[2]_i_2_n_0 ),
        .I1(\RDATA_reg[2]_i_3_n_0 ),
        .O(\RDATA_reg[2]_i_1_n_0 ),
        .S(ar_addr_reg[3]));
  MUXF7 \RDATA_reg[2]_i_2 
       (.I0(\RDATA[2]_i_4_n_0 ),
        .I1(\RDATA[2]_i_5_n_0 ),
        .O(\RDATA_reg[2]_i_2_n_0 ),
        .S(ar_addr_reg[2]));
  MUXF7 \RDATA_reg[2]_i_3 
       (.I0(\RDATA[2]_i_6_n_0 ),
        .I1(\RDATA[2]_i_7_n_0 ),
        .O(\RDATA_reg[2]_i_3_n_0 ),
        .S(ar_addr_reg[2]));
  FDRE \RDATA_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\RDATA[7]_i_1_n_0 ),
        .D(\RDATA_reg[3]_i_1_n_0 ),
        .Q(\RDATA_reg[7]_0 [3]),
        .R(s00_axi_aresetn));
  MUXF8 \RDATA_reg[3]_i_1 
       (.I0(\RDATA_reg[3]_i_2_n_0 ),
        .I1(\RDATA_reg[3]_i_3_n_0 ),
        .O(\RDATA_reg[3]_i_1_n_0 ),
        .S(ar_addr_reg[3]));
  MUXF7 \RDATA_reg[3]_i_2 
       (.I0(\RDATA[3]_i_4_n_0 ),
        .I1(\RDATA[3]_i_5_n_0 ),
        .O(\RDATA_reg[3]_i_2_n_0 ),
        .S(ar_addr_reg[2]));
  MUXF7 \RDATA_reg[3]_i_3 
       (.I0(\RDATA[3]_i_6_n_0 ),
        .I1(\RDATA[3]_i_7_n_0 ),
        .O(\RDATA_reg[3]_i_3_n_0 ),
        .S(ar_addr_reg[2]));
  FDRE \RDATA_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\RDATA[7]_i_1_n_0 ),
        .D(\RDATA_reg[4]_i_1_n_0 ),
        .Q(\RDATA_reg[7]_0 [4]),
        .R(s00_axi_aresetn));
  MUXF8 \RDATA_reg[4]_i_1 
       (.I0(\RDATA_reg[4]_i_2_n_0 ),
        .I1(\RDATA_reg[4]_i_3_n_0 ),
        .O(\RDATA_reg[4]_i_1_n_0 ),
        .S(ar_addr_reg[3]));
  MUXF7 \RDATA_reg[4]_i_2 
       (.I0(\RDATA[4]_i_4_n_0 ),
        .I1(\RDATA[4]_i_5_n_0 ),
        .O(\RDATA_reg[4]_i_2_n_0 ),
        .S(ar_addr_reg[2]));
  MUXF7 \RDATA_reg[4]_i_3 
       (.I0(\RDATA[4]_i_6_n_0 ),
        .I1(\RDATA[4]_i_7_n_0 ),
        .O(\RDATA_reg[4]_i_3_n_0 ),
        .S(ar_addr_reg[2]));
  FDRE \RDATA_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\RDATA[7]_i_1_n_0 ),
        .D(\RDATA_reg[5]_i_1_n_0 ),
        .Q(\RDATA_reg[7]_0 [5]),
        .R(s00_axi_aresetn));
  MUXF8 \RDATA_reg[5]_i_1 
       (.I0(\RDATA_reg[5]_i_2_n_0 ),
        .I1(\RDATA_reg[5]_i_3_n_0 ),
        .O(\RDATA_reg[5]_i_1_n_0 ),
        .S(ar_addr_reg[3]));
  MUXF7 \RDATA_reg[5]_i_2 
       (.I0(\RDATA[5]_i_4_n_0 ),
        .I1(\RDATA[5]_i_5_n_0 ),
        .O(\RDATA_reg[5]_i_2_n_0 ),
        .S(ar_addr_reg[2]));
  MUXF7 \RDATA_reg[5]_i_3 
       (.I0(\RDATA[5]_i_6_n_0 ),
        .I1(\RDATA[5]_i_7_n_0 ),
        .O(\RDATA_reg[5]_i_3_n_0 ),
        .S(ar_addr_reg[2]));
  FDRE \RDATA_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\RDATA[7]_i_1_n_0 ),
        .D(\RDATA_reg[6]_i_1_n_0 ),
        .Q(\RDATA_reg[7]_0 [6]),
        .R(s00_axi_aresetn));
  MUXF8 \RDATA_reg[6]_i_1 
       (.I0(\RDATA_reg[6]_i_2_n_0 ),
        .I1(\RDATA_reg[6]_i_3_n_0 ),
        .O(\RDATA_reg[6]_i_1_n_0 ),
        .S(ar_addr_reg[3]));
  MUXF7 \RDATA_reg[6]_i_2 
       (.I0(\RDATA[6]_i_4_n_0 ),
        .I1(\RDATA[6]_i_5_n_0 ),
        .O(\RDATA_reg[6]_i_2_n_0 ),
        .S(ar_addr_reg[2]));
  MUXF7 \RDATA_reg[6]_i_3 
       (.I0(\RDATA[6]_i_6_n_0 ),
        .I1(\RDATA[6]_i_7_n_0 ),
        .O(\RDATA_reg[6]_i_3_n_0 ),
        .S(ar_addr_reg[2]));
  FDRE \RDATA_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\RDATA[7]_i_1_n_0 ),
        .D(\RDATA_reg[7]_i_2_n_0 ),
        .Q(\RDATA_reg[7]_0 [7]),
        .R(s00_axi_aresetn));
  MUXF8 \RDATA_reg[7]_i_2 
       (.I0(\RDATA_reg[7]_i_3_n_0 ),
        .I1(\RDATA_reg[7]_i_4_n_0 ),
        .O(\RDATA_reg[7]_i_2_n_0 ),
        .S(ar_addr_reg[3]));
  MUXF7 \RDATA_reg[7]_i_3 
       (.I0(\RDATA[7]_i_5_n_0 ),
        .I1(\RDATA[7]_i_6_n_0 ),
        .O(\RDATA_reg[7]_i_3_n_0 ),
        .S(ar_addr_reg[2]));
  MUXF7 \RDATA_reg[7]_i_4 
       (.I0(\RDATA[7]_i_7_n_0 ),
        .I1(\RDATA[7]_i_8_n_0 ),
        .O(\RDATA_reg[7]_i_4_n_0 ),
        .S(ar_addr_reg[2]));
  FDRE RVALID_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(RVALID_reg_0),
        .Q(RVALID),
        .R(s00_axi_aresetn));
  FDRE WREADY_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(WREADY_reg_0),
        .Q(WREADY),
        .R(s00_axi_aresetn));
  LUT3 #(
    .INIT(8'h04)) 
    \ar_addr_reg_next[3]_i_1__0 
       (.I0(\ar_state_reg_n_0_[0] ),
        .I1(\ar_state_reg_n_0_[1] ),
        .I2(s00_axi_aresetn),
        .O(\ar_addr_reg_next[3]_i_1__0_n_0 ));
  FDRE \ar_addr_reg_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ar_addr_reg_next[3]_i_1__0_n_0 ),
        .D(\ar_addr_reg_next_reg[3]_0 [0]),
        .Q(\ar_addr_reg_next_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ar_addr_reg_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ar_addr_reg_next[3]_i_1__0_n_0 ),
        .D(\ar_addr_reg_next_reg[3]_0 [1]),
        .Q(\ar_addr_reg_next_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \ar_addr_reg_next_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ar_addr_reg_next[3]_i_1__0_n_0 ),
        .D(\ar_addr_reg_next_reg[3]_0 [2]),
        .Q(\ar_addr_reg_next_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \ar_addr_reg_next_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ar_addr_reg_next[3]_i_1__0_n_0 ),
        .D(\ar_addr_reg_next_reg[3]_0 [3]),
        .Q(\ar_addr_reg_next_reg_n_0_[3] ),
        .R(1'b0));
  FDCE \ar_addr_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\ar_addr_reg_next_reg_n_0_[0] ),
        .Q(ar_addr_reg[0]));
  FDCE \ar_addr_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\ar_addr_reg_next_reg_n_0_[1] ),
        .Q(ar_addr_reg[1]));
  FDCE \ar_addr_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\ar_addr_reg_next_reg_n_0_[2] ),
        .Q(ar_addr_reg[2]));
  FDCE \ar_addr_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\ar_addr_reg_next_reg_n_0_[3] ),
        .Q(ar_addr_reg[3]));
  LUT4 #(
    .INIT(16'hDF40)) 
    \ar_state_next[0]_i_1__0 
       (.I0(\ar_state_reg_n_0_[0] ),
        .I1(\ar_state_reg_n_0_[1] ),
        .I2(ARVALID),
        .I3(ar_state_next[0]),
        .O(\ar_state_next[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBF20)) 
    \ar_state_next[1]_i_1__0 
       (.I0(\ar_state_reg_n_0_[0] ),
        .I1(\ar_state_reg_n_0_[1] ),
        .I2(ARVALID),
        .I3(ar_state_next[1]),
        .O(\ar_state_next[1]_i_1__0_n_0 ));
  FDSE \ar_state_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ar_state_next[0]_i_1__0_n_0 ),
        .Q(ar_state_next[0]),
        .S(s00_axi_aresetn));
  FDRE \ar_state_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ar_state_next[1]_i_1__0_n_0 ),
        .Q(ar_state_next[1]),
        .R(s00_axi_aresetn));
  (* FSM_ENCODED_STATES = "AR_IDLE:01,AR_READY:10," *) 
  FDPE \ar_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ar_state_next[0]),
        .PRE(s00_axi_aresetn),
        .Q(\ar_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "AR_IDLE:01,AR_READY:10," *) 
  FDCE \ar_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(ar_state_next[1]),
        .Q(\ar_state_reg_n_0_[1] ));
  LUT3 #(
    .INIT(8'h04)) 
    \aw_addr_reg_next[3]_i_1__0 
       (.I0(\aw_state_reg[1]_0 [0]),
        .I1(\aw_state_reg[1]_0 [1]),
        .I2(s00_axi_aresetn),
        .O(\aw_addr_reg_next[3]_i_1__0_n_0 ));
  FDRE \aw_addr_reg_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\aw_addr_reg_next[3]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(aw_addr_reg_next__0[0]),
        .R(1'b0));
  FDRE \aw_addr_reg_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\aw_addr_reg_next[3]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(aw_addr_reg_next__0[1]),
        .R(1'b0));
  FDRE \aw_addr_reg_next_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\aw_addr_reg_next[3]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(aw_addr_reg_next__0[2]),
        .R(1'b0));
  FDRE \aw_addr_reg_next_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\aw_addr_reg_next[3]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(aw_addr_reg_next__0[3]),
        .R(1'b0));
  FDCE \aw_addr_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(aw_addr_reg_next__0[0]),
        .Q(\aw_addr_reg_reg_n_0_[0] ));
  FDCE \aw_addr_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(aw_addr_reg_next__0[1]),
        .Q(\aw_addr_reg_reg_n_0_[1] ));
  FDCE \aw_addr_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(aw_addr_reg_next__0[2]),
        .Q(\aw_addr_reg_reg_n_0_[2] ));
  FDCE \aw_addr_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(aw_addr_reg_next__0[3]),
        .Q(\aw_addr_reg_reg_n_0_[3] ));
  LUT4 #(
    .INIT(16'hDFCB)) 
    \aw_state_next[0]_i_1__0 
       (.I0(AWVALID),
        .I1(\aw_state_reg[1]_0 [1]),
        .I2(\aw_state_reg[1]_0 [0]),
        .I3(aw_state_next[0]),
        .O(\aw_state_next[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h3420)) 
    \aw_state_next[1]_i_1__0 
       (.I0(AWVALID),
        .I1(\aw_state_reg[1]_0 [1]),
        .I2(\aw_state_reg[1]_0 [0]),
        .I3(aw_state_next[1]),
        .O(\aw_state_next[1]_i_1__0_n_0 ));
  FDSE \aw_state_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\aw_state_next[0]_i_1__0_n_0 ),
        .Q(aw_state_next[0]),
        .S(s00_axi_aresetn));
  FDRE \aw_state_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\aw_state_next[1]_i_1__0_n_0 ),
        .Q(aw_state_next[1]),
        .R(s00_axi_aresetn));
  (* FSM_ENCODED_STATES = "AW_IDLE:01,AW_READY:10," *) 
  FDPE \aw_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_state_next[0]),
        .PRE(s00_axi_aresetn),
        .Q(\aw_state_reg[1]_0 [0]));
  (* FSM_ENCODED_STATES = "AW_IDLE:01,AW_READY:10," *) 
  FDCE \aw_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(aw_state_next[1]),
        .Q(\aw_state_reg[1]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT4 #(
    .INIT(16'h0008)) 
    \led[15]_i_1 
       (.I0(Q[1]),
        .I1(\w_strb_reg_reg_n_0_[1] ),
        .I2(Q[0]),
        .I3(s00_axi_aresetn),
        .O(\led[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \led[7]_i_1 
       (.I0(Q[1]),
        .I1(p_0_in),
        .I2(Q[0]),
        .I3(s00_axi_aresetn),
        .O(\led[7]_i_1_n_0 ));
  FDRE \led_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\led[7]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[0] ),
        .Q(led[0]),
        .R(1'b0));
  FDRE \led_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\led[15]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[10] ),
        .Q(led[10]),
        .R(1'b0));
  FDRE \led_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\led[15]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[11] ),
        .Q(led[11]),
        .R(1'b0));
  FDRE \led_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\led[15]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[12] ),
        .Q(led[12]),
        .R(1'b0));
  FDRE \led_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\led[15]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[13] ),
        .Q(led[13]),
        .R(1'b0));
  FDRE \led_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\led[15]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[14] ),
        .Q(led[14]),
        .R(1'b0));
  FDRE \led_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\led[15]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[15] ),
        .Q(led[15]),
        .R(1'b0));
  FDRE \led_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\led[7]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[1] ),
        .Q(led[1]),
        .R(1'b0));
  FDRE \led_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\led[7]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[2] ),
        .Q(led[2]),
        .R(1'b0));
  FDRE \led_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\led[7]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[3] ),
        .Q(led[3]),
        .R(1'b0));
  FDRE \led_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\led[7]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[4] ),
        .Q(led[4]),
        .R(1'b0));
  FDRE \led_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\led[7]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[5] ),
        .Q(led[5]),
        .R(1'b0));
  FDRE \led_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\led[7]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[6] ),
        .Q(led[6]),
        .R(1'b0));
  FDRE \led_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\led[7]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[7] ),
        .Q(led[7]),
        .R(1'b0));
  FDRE \led_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\led[15]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[8] ),
        .Q(led[8]),
        .R(1'b0));
  FDRE \led_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\led[15]_i_1_n_0 ),
        .D(\write_data_reg_reg_n_0_[9] ),
        .Q(led[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF7FF3000)) 
    \r_state_next[0]_i_1__0 
       (.I0(ARREADY),
        .I1(\r_state_reg[1]_0 [0]),
        .I2(\r_state_reg[1]_0 [1]),
        .I3(RREADY),
        .I4(r_state_next[0]),
        .O(\r_state_next[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hCFFF0800)) 
    \r_state_next[1]_i_1__0 
       (.I0(ARREADY),
        .I1(\r_state_reg[1]_0 [0]),
        .I2(\r_state_reg[1]_0 [1]),
        .I3(RREADY),
        .I4(r_state_next[1]),
        .O(\r_state_next[1]_i_1__0_n_0 ));
  FDSE \r_state_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_state_next[0]_i_1__0_n_0 ),
        .Q(r_state_next[0]),
        .S(s00_axi_aresetn));
  FDRE \r_state_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_state_next[1]_i_1__0_n_0 ),
        .Q(r_state_next[1]),
        .R(s00_axi_aresetn));
  (* FSM_ENCODED_STATES = "R_IDLE:01,R_VALID:10," *) 
  FDPE \r_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_state_next[0]),
        .PRE(s00_axi_aresetn),
        .Q(\r_state_reg[1]_0 [0]));
  (* FSM_ENCODED_STATES = "R_IDLE:01,R_VALID:10," *) 
  FDCE \r_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(r_state_next[1]),
        .Q(\r_state_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[0][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[0][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[1][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[0]_14 [0]),
        .O(\slave_memory[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[0][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[0][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[1][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[0]_14 [1]),
        .O(\slave_memory[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[0][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[0][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[1][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[0]_14 [2]),
        .O(\slave_memory[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[0][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[0][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[1][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[0]_14 [3]),
        .O(\slave_memory[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[0][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[0][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[1][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[0]_14 [4]),
        .O(\slave_memory[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[0][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[0][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[1][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[0]_14 [5]),
        .O(\slave_memory[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[0][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[0][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[1][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[0]_14 [6]),
        .O(\slave_memory[0][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[0][7]_i_1 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[0][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[1][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[0]_14 [7]),
        .O(\slave_memory[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \slave_memory[0][7]_i_2 
       (.I0(\aw_addr_reg_reg_n_0_[0] ),
        .I1(\aw_addr_reg_reg_n_0_[1] ),
        .I2(\aw_addr_reg_reg_n_0_[3] ),
        .I3(\aw_addr_reg_reg_n_0_[2] ),
        .O(\slave_memory[0][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[10][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[10][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[11][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[10]_4 [0]),
        .O(\slave_memory[10][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[10][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[10][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[11][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[10]_4 [1]),
        .O(\slave_memory[10][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[10][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[10][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[11][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[10]_4 [2]),
        .O(\slave_memory[10][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[10][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[10][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[11][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[10]_4 [3]),
        .O(\slave_memory[10][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[10][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[10][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[11][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[10]_4 [4]),
        .O(\slave_memory[10][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[10][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[10][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[11][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[10]_4 [5]),
        .O(\slave_memory[10][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[10][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[10][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[11][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[10]_4 [6]),
        .O(\slave_memory[10][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[10][7]_i_1 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[10][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[11][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[10]_4 [7]),
        .O(\slave_memory[10][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \slave_memory[10][7]_i_2 
       (.I0(\aw_addr_reg_reg_n_0_[0] ),
        .I1(\aw_addr_reg_reg_n_0_[3] ),
        .I2(\aw_addr_reg_reg_n_0_[2] ),
        .I3(\aw_addr_reg_reg_n_0_[1] ),
        .O(\slave_memory[10][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[11][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[11][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[12][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[11]_3 [0]),
        .O(\slave_memory[11][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[11][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[11][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[12][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[11]_3 [1]),
        .O(\slave_memory[11][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[11][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[11][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[12][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[11]_3 [2]),
        .O(\slave_memory[11][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[11][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[11][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[12][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[11]_3 [3]),
        .O(\slave_memory[11][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[11][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[11][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[12][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[11]_3 [4]),
        .O(\slave_memory[11][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[11][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[11][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[12][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[11]_3 [5]),
        .O(\slave_memory[11][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[11][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[11][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[12][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[11]_3 [6]),
        .O(\slave_memory[11][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[11][7]_i_1 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[11][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[12][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[11]_3 [7]),
        .O(\slave_memory[11][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \slave_memory[11][7]_i_2 
       (.I0(\aw_addr_reg_reg_n_0_[3] ),
        .I1(\aw_addr_reg_reg_n_0_[0] ),
        .I2(\aw_addr_reg_reg_n_0_[2] ),
        .I3(\aw_addr_reg_reg_n_0_[1] ),
        .O(\slave_memory[11][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[12][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[12][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[13][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[12]_2 [0]),
        .O(\slave_memory[12][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[12][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[12][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[13][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[12]_2 [1]),
        .O(\slave_memory[12][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[12][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[12][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[13][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[12]_2 [2]),
        .O(\slave_memory[12][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[12][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[12][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[13][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[12]_2 [3]),
        .O(\slave_memory[12][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[12][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[12][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[13][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[12]_2 [4]),
        .O(\slave_memory[12][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[12][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[12][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[13][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[12]_2 [5]),
        .O(\slave_memory[12][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[12][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[12][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[13][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[12]_2 [6]),
        .O(\slave_memory[12][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[12][7]_i_1 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[12][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[13][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[12]_2 [7]),
        .O(\slave_memory[12][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \slave_memory[12][7]_i_2 
       (.I0(\aw_addr_reg_reg_n_0_[2] ),
        .I1(\aw_addr_reg_reg_n_0_[1] ),
        .I2(\aw_addr_reg_reg_n_0_[3] ),
        .I3(\aw_addr_reg_reg_n_0_[0] ),
        .O(\slave_memory[12][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[13][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[13][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[14][7]_i_3_n_0 ),
        .I5(\slave_memory_reg[13]_1 [0]),
        .O(\slave_memory[13][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[13][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[13][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[14][7]_i_3_n_0 ),
        .I5(\slave_memory_reg[13]_1 [1]),
        .O(\slave_memory[13][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[13][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[13][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[14][7]_i_3_n_0 ),
        .I5(\slave_memory_reg[13]_1 [2]),
        .O(\slave_memory[13][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[13][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[13][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[14][7]_i_3_n_0 ),
        .I5(\slave_memory_reg[13]_1 [3]),
        .O(\slave_memory[13][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[13][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[13][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[14][7]_i_3_n_0 ),
        .I5(\slave_memory_reg[13]_1 [4]),
        .O(\slave_memory[13][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[13][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[13][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[14][7]_i_3_n_0 ),
        .I5(\slave_memory_reg[13]_1 [5]),
        .O(\slave_memory[13][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[13][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[13][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[14][7]_i_3_n_0 ),
        .I5(\slave_memory_reg[13]_1 [6]),
        .O(\slave_memory[13][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[13][7]_i_1 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[13][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[14][7]_i_3_n_0 ),
        .I5(\slave_memory_reg[13]_1 [7]),
        .O(\slave_memory[13][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \slave_memory[13][7]_i_2 
       (.I0(\aw_addr_reg_reg_n_0_[2] ),
        .I1(\aw_addr_reg_reg_n_0_[0] ),
        .I2(\aw_addr_reg_reg_n_0_[3] ),
        .I3(\aw_addr_reg_reg_n_0_[1] ),
        .O(\slave_memory[13][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[14][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[14][7]_i_3_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[14][7]_i_5_n_0 ),
        .I5(\slave_memory_reg[14]_0 [0]),
        .O(p_0_in__5[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slave_memory[14][0]_i_2 
       (.I0(\write_data_reg_reg_n_0_[16] ),
        .I1(\w_strb_reg_reg_n_0_[2] ),
        .I2(\slave_memory_reg[14][0]_i_3_n_0 ),
        .I3(\aw_addr_reg_reg_n_0_[3] ),
        .I4(\slave_memory_reg[14][0]_i_4_n_0 ),
        .O(\slave_memory[14][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][0]_i_5 
       (.I0(\slave_memory_reg[13]_1 [0]),
        .I1(\slave_memory_reg[12]_2 [0]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[11]_3 [0]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[10]_4 [0]),
        .O(\slave_memory[14][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][0]_i_6 
       (.I0(\slave_memory_reg[1]_13 [0]),
        .I1(\slave_memory_reg[0]_14 [0]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[15]_15 [0]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[14]_0 [0]),
        .O(\slave_memory[14][0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][0]_i_7 
       (.I0(\slave_memory_reg[5]_9 [0]),
        .I1(\slave_memory_reg[4]_10 [0]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[3]_11 [0]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[2]_12 [0]),
        .O(\slave_memory[14][0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][0]_i_8 
       (.I0(\slave_memory_reg[9]_5 [0]),
        .I1(\slave_memory_reg[8]_6 [0]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[7]_7 [0]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[6]_8 [0]),
        .O(\slave_memory[14][0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[14][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[14][7]_i_3_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[14][7]_i_5_n_0 ),
        .I5(\slave_memory_reg[14]_0 [1]),
        .O(p_0_in__5[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slave_memory[14][1]_i_2 
       (.I0(\write_data_reg_reg_n_0_[17] ),
        .I1(\w_strb_reg_reg_n_0_[2] ),
        .I2(\slave_memory_reg[14][1]_i_3_n_0 ),
        .I3(\aw_addr_reg_reg_n_0_[3] ),
        .I4(\slave_memory_reg[14][1]_i_4_n_0 ),
        .O(\slave_memory[14][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][1]_i_5 
       (.I0(\slave_memory_reg[13]_1 [1]),
        .I1(\slave_memory_reg[12]_2 [1]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[11]_3 [1]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[10]_4 [1]),
        .O(\slave_memory[14][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][1]_i_6 
       (.I0(\slave_memory_reg[1]_13 [1]),
        .I1(\slave_memory_reg[0]_14 [1]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[15]_15 [1]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[14]_0 [1]),
        .O(\slave_memory[14][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][1]_i_7 
       (.I0(\slave_memory_reg[5]_9 [1]),
        .I1(\slave_memory_reg[4]_10 [1]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[3]_11 [1]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[2]_12 [1]),
        .O(\slave_memory[14][1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][1]_i_8 
       (.I0(\slave_memory_reg[9]_5 [1]),
        .I1(\slave_memory_reg[8]_6 [1]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[7]_7 [1]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[6]_8 [1]),
        .O(\slave_memory[14][1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[14][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[14][7]_i_3_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[14][7]_i_5_n_0 ),
        .I5(\slave_memory_reg[14]_0 [2]),
        .O(p_0_in__5[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slave_memory[14][2]_i_2 
       (.I0(\write_data_reg_reg_n_0_[18] ),
        .I1(\w_strb_reg_reg_n_0_[2] ),
        .I2(\slave_memory_reg[14][2]_i_3_n_0 ),
        .I3(\aw_addr_reg_reg_n_0_[3] ),
        .I4(\slave_memory_reg[14][2]_i_4_n_0 ),
        .O(\slave_memory[14][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][2]_i_5 
       (.I0(\slave_memory_reg[13]_1 [2]),
        .I1(\slave_memory_reg[12]_2 [2]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[11]_3 [2]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[10]_4 [2]),
        .O(\slave_memory[14][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][2]_i_6 
       (.I0(\slave_memory_reg[1]_13 [2]),
        .I1(\slave_memory_reg[0]_14 [2]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[15]_15 [2]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[14]_0 [2]),
        .O(\slave_memory[14][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][2]_i_7 
       (.I0(\slave_memory_reg[5]_9 [2]),
        .I1(\slave_memory_reg[4]_10 [2]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[3]_11 [2]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[2]_12 [2]),
        .O(\slave_memory[14][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][2]_i_8 
       (.I0(\slave_memory_reg[9]_5 [2]),
        .I1(\slave_memory_reg[8]_6 [2]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[7]_7 [2]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[6]_8 [2]),
        .O(\slave_memory[14][2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[14][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[14][7]_i_3_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[14][7]_i_5_n_0 ),
        .I5(\slave_memory_reg[14]_0 [3]),
        .O(p_0_in__5[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slave_memory[14][3]_i_2 
       (.I0(\write_data_reg_reg_n_0_[19] ),
        .I1(\w_strb_reg_reg_n_0_[2] ),
        .I2(\slave_memory_reg[14][3]_i_3_n_0 ),
        .I3(\aw_addr_reg_reg_n_0_[3] ),
        .I4(\slave_memory_reg[14][3]_i_4_n_0 ),
        .O(\slave_memory[14][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][3]_i_5 
       (.I0(\slave_memory_reg[13]_1 [3]),
        .I1(\slave_memory_reg[12]_2 [3]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[11]_3 [3]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[10]_4 [3]),
        .O(\slave_memory[14][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][3]_i_6 
       (.I0(\slave_memory_reg[1]_13 [3]),
        .I1(\slave_memory_reg[0]_14 [3]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[15]_15 [3]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[14]_0 [3]),
        .O(\slave_memory[14][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][3]_i_7 
       (.I0(\slave_memory_reg[5]_9 [3]),
        .I1(\slave_memory_reg[4]_10 [3]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[3]_11 [3]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[2]_12 [3]),
        .O(\slave_memory[14][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][3]_i_8 
       (.I0(\slave_memory_reg[9]_5 [3]),
        .I1(\slave_memory_reg[8]_6 [3]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[7]_7 [3]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[6]_8 [3]),
        .O(\slave_memory[14][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[14][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[14][7]_i_3_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[14][7]_i_5_n_0 ),
        .I5(\slave_memory_reg[14]_0 [4]),
        .O(p_0_in__5[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slave_memory[14][4]_i_2 
       (.I0(\write_data_reg_reg_n_0_[20] ),
        .I1(\w_strb_reg_reg_n_0_[2] ),
        .I2(\slave_memory_reg[14][4]_i_3_n_0 ),
        .I3(\aw_addr_reg_reg_n_0_[3] ),
        .I4(\slave_memory_reg[14][4]_i_4_n_0 ),
        .O(\slave_memory[14][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][4]_i_5 
       (.I0(\slave_memory_reg[13]_1 [4]),
        .I1(\slave_memory_reg[12]_2 [4]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[11]_3 [4]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[10]_4 [4]),
        .O(\slave_memory[14][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][4]_i_6 
       (.I0(\slave_memory_reg[1]_13 [4]),
        .I1(\slave_memory_reg[0]_14 [4]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[15]_15 [4]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[14]_0 [4]),
        .O(\slave_memory[14][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][4]_i_7 
       (.I0(\slave_memory_reg[5]_9 [4]),
        .I1(\slave_memory_reg[4]_10 [4]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[3]_11 [4]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[2]_12 [4]),
        .O(\slave_memory[14][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][4]_i_8 
       (.I0(\slave_memory_reg[9]_5 [4]),
        .I1(\slave_memory_reg[8]_6 [4]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[7]_7 [4]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[6]_8 [4]),
        .O(\slave_memory[14][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[14][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[14][7]_i_3_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[14][7]_i_5_n_0 ),
        .I5(\slave_memory_reg[14]_0 [5]),
        .O(p_0_in__5[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slave_memory[14][5]_i_2 
       (.I0(\write_data_reg_reg_n_0_[21] ),
        .I1(\w_strb_reg_reg_n_0_[2] ),
        .I2(\slave_memory_reg[14][5]_i_3_n_0 ),
        .I3(\aw_addr_reg_reg_n_0_[3] ),
        .I4(\slave_memory_reg[14][5]_i_4_n_0 ),
        .O(\slave_memory[14][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][5]_i_5 
       (.I0(\slave_memory_reg[13]_1 [5]),
        .I1(\slave_memory_reg[12]_2 [5]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[11]_3 [5]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[10]_4 [5]),
        .O(\slave_memory[14][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][5]_i_6 
       (.I0(\slave_memory_reg[1]_13 [5]),
        .I1(\slave_memory_reg[0]_14 [5]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[15]_15 [5]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[14]_0 [5]),
        .O(\slave_memory[14][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][5]_i_7 
       (.I0(\slave_memory_reg[5]_9 [5]),
        .I1(\slave_memory_reg[4]_10 [5]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[3]_11 [5]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[2]_12 [5]),
        .O(\slave_memory[14][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][5]_i_8 
       (.I0(\slave_memory_reg[9]_5 [5]),
        .I1(\slave_memory_reg[8]_6 [5]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[7]_7 [5]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[6]_8 [5]),
        .O(\slave_memory[14][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[14][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[14][7]_i_3_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[14][7]_i_5_n_0 ),
        .I5(\slave_memory_reg[14]_0 [6]),
        .O(p_0_in__5[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slave_memory[14][6]_i_2 
       (.I0(\write_data_reg_reg_n_0_[22] ),
        .I1(\w_strb_reg_reg_n_0_[2] ),
        .I2(\slave_memory_reg[14][6]_i_3_n_0 ),
        .I3(\aw_addr_reg_reg_n_0_[3] ),
        .I4(\slave_memory_reg[14][6]_i_4_n_0 ),
        .O(\slave_memory[14][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][6]_i_5 
       (.I0(\slave_memory_reg[13]_1 [6]),
        .I1(\slave_memory_reg[12]_2 [6]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[11]_3 [6]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[10]_4 [6]),
        .O(\slave_memory[14][6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][6]_i_6 
       (.I0(\slave_memory_reg[1]_13 [6]),
        .I1(\slave_memory_reg[0]_14 [6]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[15]_15 [6]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[14]_0 [6]),
        .O(\slave_memory[14][6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][6]_i_7 
       (.I0(\slave_memory_reg[5]_9 [6]),
        .I1(\slave_memory_reg[4]_10 [6]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[3]_11 [6]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[2]_12 [6]),
        .O(\slave_memory[14][6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][6]_i_8 
       (.I0(\slave_memory_reg[9]_5 [6]),
        .I1(\slave_memory_reg[8]_6 [6]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[7]_7 [6]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[6]_8 [6]),
        .O(\slave_memory[14][6]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \slave_memory[14][7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(s00_axi_aresetn),
        .O(\slave_memory[14][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][7]_i_10 
       (.I0(\slave_memory_reg[5]_9 [7]),
        .I1(\slave_memory_reg[4]_10 [7]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[3]_11 [7]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[2]_12 [7]),
        .O(\slave_memory[14][7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][7]_i_11 
       (.I0(\slave_memory_reg[9]_5 [7]),
        .I1(\slave_memory_reg[8]_6 [7]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[7]_7 [7]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[6]_8 [7]),
        .O(\slave_memory[14][7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[14][7]_i_2 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[14][7]_i_3_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[14][7]_i_5_n_0 ),
        .I5(\slave_memory_reg[14]_0 [7]),
        .O(p_0_in__5[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \slave_memory[14][7]_i_3 
       (.I0(\aw_addr_reg_reg_n_0_[0] ),
        .I1(\aw_addr_reg_reg_n_0_[2] ),
        .I2(\aw_addr_reg_reg_n_0_[3] ),
        .I3(\aw_addr_reg_reg_n_0_[1] ),
        .O(\slave_memory[14][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \slave_memory[14][7]_i_4 
       (.I0(\write_data_reg_reg_n_0_[23] ),
        .I1(\w_strb_reg_reg_n_0_[2] ),
        .I2(\slave_memory_reg[14][7]_i_6_n_0 ),
        .I3(\aw_addr_reg_reg_n_0_[3] ),
        .I4(\slave_memory_reg[14][7]_i_7_n_0 ),
        .O(\slave_memory[14][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \slave_memory[14][7]_i_5 
       (.I0(\aw_addr_reg_reg_n_0_[1] ),
        .I1(\aw_addr_reg_reg_n_0_[0] ),
        .I2(\aw_addr_reg_reg_n_0_[3] ),
        .I3(\aw_addr_reg_reg_n_0_[2] ),
        .O(\slave_memory[14][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][7]_i_8 
       (.I0(\slave_memory_reg[13]_1 [7]),
        .I1(\slave_memory_reg[12]_2 [7]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[11]_3 [7]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[10]_4 [7]),
        .O(\slave_memory[14][7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slave_memory[14][7]_i_9 
       (.I0(\slave_memory_reg[1]_13 [7]),
        .I1(\slave_memory_reg[0]_14 [7]),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\slave_memory_reg[15]_15 [7]),
        .I4(\aw_addr_reg_reg_n_0_[0] ),
        .I5(\slave_memory_reg[14]_0 [7]),
        .O(\slave_memory[14][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[15][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[14][7]_i_5_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[0][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[15]_15 [0]),
        .O(\slave_memory[15][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[15][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[14][7]_i_5_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[0][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[15]_15 [1]),
        .O(\slave_memory[15][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[15][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[14][7]_i_5_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[0][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[15]_15 [2]),
        .O(\slave_memory[15][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[15][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[14][7]_i_5_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[0][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[15]_15 [3]),
        .O(\slave_memory[15][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[15][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[14][7]_i_5_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[0][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[15]_15 [4]),
        .O(\slave_memory[15][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[15][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[14][7]_i_5_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[0][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[15]_15 [5]),
        .O(\slave_memory[15][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[15][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[14][7]_i_5_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[0][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[15]_15 [6]),
        .O(\slave_memory[15][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[15][7]_i_1 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[14][7]_i_5_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[0][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[15]_15 [7]),
        .O(\slave_memory[15][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[1][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[1][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[2][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[1]_13 [0]),
        .O(\slave_memory[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[1][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[1][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[2][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[1]_13 [1]),
        .O(\slave_memory[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[1][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[1][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[2][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[1]_13 [2]),
        .O(\slave_memory[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[1][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[1][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[2][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[1]_13 [3]),
        .O(\slave_memory[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[1][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[1][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[2][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[1]_13 [4]),
        .O(\slave_memory[1][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[1][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[1][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[2][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[1]_13 [5]),
        .O(\slave_memory[1][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[1][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[1][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[2][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[1]_13 [6]),
        .O(\slave_memory[1][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[1][7]_i_1 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[1][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[2][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[1]_13 [7]),
        .O(\slave_memory[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \slave_memory[1][7]_i_2 
       (.I0(\aw_addr_reg_reg_n_0_[1] ),
        .I1(\aw_addr_reg_reg_n_0_[0] ),
        .I2(\aw_addr_reg_reg_n_0_[3] ),
        .I3(\aw_addr_reg_reg_n_0_[2] ),
        .O(\slave_memory[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[2][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[2][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[3][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[2]_12 [0]),
        .O(\slave_memory[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[2][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[2][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[3][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[2]_12 [1]),
        .O(\slave_memory[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[2][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[2][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[3][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[2]_12 [2]),
        .O(\slave_memory[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[2][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[2][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[3][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[2]_12 [3]),
        .O(\slave_memory[2][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[2][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[2][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[3][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[2]_12 [4]),
        .O(\slave_memory[2][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[2][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[2][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[3][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[2]_12 [5]),
        .O(\slave_memory[2][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[2][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[2][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[3][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[2]_12 [6]),
        .O(\slave_memory[2][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[2][7]_i_1 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[2][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[3][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[2]_12 [7]),
        .O(\slave_memory[2][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slave_memory[2][7]_i_2 
       (.I0(\aw_addr_reg_reg_n_0_[1] ),
        .I1(\aw_addr_reg_reg_n_0_[0] ),
        .I2(\aw_addr_reg_reg_n_0_[3] ),
        .I3(\aw_addr_reg_reg_n_0_[2] ),
        .O(\slave_memory[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[3][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[3][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[4][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[3]_11 [0]),
        .O(\slave_memory[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[3][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[3][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[4][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[3]_11 [1]),
        .O(\slave_memory[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[3][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[3][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[4][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[3]_11 [2]),
        .O(\slave_memory[3][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[3][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[3][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[4][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[3]_11 [3]),
        .O(\slave_memory[3][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[3][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[3][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[4][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[3]_11 [4]),
        .O(\slave_memory[3][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[3][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[3][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[4][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[3]_11 [5]),
        .O(\slave_memory[3][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[3][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[3][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[4][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[3]_11 [6]),
        .O(\slave_memory[3][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[3][7]_i_1 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[3][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[4][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[3]_11 [7]),
        .O(\slave_memory[3][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \slave_memory[3][7]_i_2 
       (.I0(\aw_addr_reg_reg_n_0_[1] ),
        .I1(\aw_addr_reg_reg_n_0_[0] ),
        .I2(\aw_addr_reg_reg_n_0_[3] ),
        .I3(\aw_addr_reg_reg_n_0_[2] ),
        .O(\slave_memory[3][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[4][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[4][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[5][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[4]_10 [0]),
        .O(\slave_memory[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[4][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[4][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[5][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[4]_10 [1]),
        .O(\slave_memory[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[4][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[4][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[5][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[4]_10 [2]),
        .O(\slave_memory[4][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[4][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[4][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[5][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[4]_10 [3]),
        .O(\slave_memory[4][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[4][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[4][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[5][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[4]_10 [4]),
        .O(\slave_memory[4][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[4][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[4][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[5][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[4]_10 [5]),
        .O(\slave_memory[4][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[4][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[4][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[5][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[4]_10 [6]),
        .O(\slave_memory[4][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[4][7]_i_1 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[4][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[5][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[4]_10 [7]),
        .O(\slave_memory[4][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \slave_memory[4][7]_i_2 
       (.I0(\aw_addr_reg_reg_n_0_[0] ),
        .I1(\aw_addr_reg_reg_n_0_[1] ),
        .I2(\aw_addr_reg_reg_n_0_[3] ),
        .I3(\aw_addr_reg_reg_n_0_[2] ),
        .O(\slave_memory[4][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[5][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[5][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[6][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[5]_9 [0]),
        .O(\slave_memory[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[5][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[5][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[6][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[5]_9 [1]),
        .O(\slave_memory[5][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[5][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[5][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[6][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[5]_9 [2]),
        .O(\slave_memory[5][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[5][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[5][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[6][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[5]_9 [3]),
        .O(\slave_memory[5][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[5][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[5][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[6][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[5]_9 [4]),
        .O(\slave_memory[5][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[5][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[5][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[6][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[5]_9 [5]),
        .O(\slave_memory[5][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[5][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[5][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[6][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[5]_9 [6]),
        .O(\slave_memory[5][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[5][7]_i_1 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[5][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[6][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[5]_9 [7]),
        .O(\slave_memory[5][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \slave_memory[5][7]_i_2 
       (.I0(\aw_addr_reg_reg_n_0_[1] ),
        .I1(\aw_addr_reg_reg_n_0_[0] ),
        .I2(\aw_addr_reg_reg_n_0_[3] ),
        .I3(\aw_addr_reg_reg_n_0_[2] ),
        .O(\slave_memory[5][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[6][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[6][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[7][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[6]_8 [0]),
        .O(\slave_memory[6][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[6][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[6][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[7][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[6]_8 [1]),
        .O(\slave_memory[6][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[6][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[6][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[7][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[6]_8 [2]),
        .O(\slave_memory[6][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[6][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[6][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[7][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[6]_8 [3]),
        .O(\slave_memory[6][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[6][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[6][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[7][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[6]_8 [4]),
        .O(\slave_memory[6][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[6][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[6][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[7][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[6]_8 [5]),
        .O(\slave_memory[6][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[6][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[6][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[7][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[6]_8 [6]),
        .O(\slave_memory[6][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[6][7]_i_1 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[6][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[7][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[6]_8 [7]),
        .O(\slave_memory[6][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \slave_memory[6][7]_i_2 
       (.I0(\aw_addr_reg_reg_n_0_[3] ),
        .I1(\aw_addr_reg_reg_n_0_[2] ),
        .I2(\aw_addr_reg_reg_n_0_[1] ),
        .I3(\aw_addr_reg_reg_n_0_[0] ),
        .O(\slave_memory[6][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[7][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[7][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[8][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[7]_7 [0]),
        .O(\slave_memory[7][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[7][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[7][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[8][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[7]_7 [1]),
        .O(\slave_memory[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[7][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[7][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[8][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[7]_7 [2]),
        .O(\slave_memory[7][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[7][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[7][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[8][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[7]_7 [3]),
        .O(\slave_memory[7][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[7][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[7][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[8][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[7]_7 [4]),
        .O(\slave_memory[7][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[7][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[7][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[8][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[7]_7 [5]),
        .O(\slave_memory[7][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[7][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[7][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[8][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[7]_7 [6]),
        .O(\slave_memory[7][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[7][7]_i_1 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[7][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[8][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[7]_7 [7]),
        .O(\slave_memory[7][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \slave_memory[7][7]_i_2 
       (.I0(\aw_addr_reg_reg_n_0_[2] ),
        .I1(\aw_addr_reg_reg_n_0_[0] ),
        .I2(\aw_addr_reg_reg_n_0_[3] ),
        .I3(\aw_addr_reg_reg_n_0_[1] ),
        .O(\slave_memory[7][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[8][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[8][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[9][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[8]_6 [0]),
        .O(\slave_memory[8][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[8][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[8][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[9][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[8]_6 [1]),
        .O(\slave_memory[8][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[8][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[8][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[9][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[8]_6 [2]),
        .O(\slave_memory[8][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[8][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[8][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[9][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[8]_6 [3]),
        .O(\slave_memory[8][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[8][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[8][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[9][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[8]_6 [4]),
        .O(\slave_memory[8][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[8][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[8][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[9][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[8]_6 [5]),
        .O(\slave_memory[8][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[8][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[8][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[9][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[8]_6 [6]),
        .O(\slave_memory[8][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[8][7]_i_1 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[8][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[9][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[8]_6 [7]),
        .O(\slave_memory[8][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \slave_memory[8][7]_i_2 
       (.I0(\aw_addr_reg_reg_n_0_[3] ),
        .I1(\aw_addr_reg_reg_n_0_[1] ),
        .I2(\aw_addr_reg_reg_n_0_[2] ),
        .I3(\aw_addr_reg_reg_n_0_[0] ),
        .O(\slave_memory[8][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[9][0]_i_1 
       (.I0(p_6_in[0]),
        .I1(\slave_memory[9][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][0]_i_2_n_0 ),
        .I4(\slave_memory[10][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[9]_5 [0]),
        .O(\slave_memory[9][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[9][1]_i_1 
       (.I0(p_6_in[1]),
        .I1(\slave_memory[9][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][1]_i_2_n_0 ),
        .I4(\slave_memory[10][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[9]_5 [1]),
        .O(\slave_memory[9][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[9][2]_i_1 
       (.I0(p_6_in[2]),
        .I1(\slave_memory[9][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][2]_i_2_n_0 ),
        .I4(\slave_memory[10][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[9]_5 [2]),
        .O(\slave_memory[9][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[9][3]_i_1 
       (.I0(p_6_in[3]),
        .I1(\slave_memory[9][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][3]_i_2_n_0 ),
        .I4(\slave_memory[10][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[9]_5 [3]),
        .O(\slave_memory[9][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[9][4]_i_1 
       (.I0(p_6_in[4]),
        .I1(\slave_memory[9][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][4]_i_2_n_0 ),
        .I4(\slave_memory[10][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[9]_5 [4]),
        .O(\slave_memory[9][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[9][5]_i_1 
       (.I0(p_6_in[5]),
        .I1(\slave_memory[9][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][5]_i_2_n_0 ),
        .I4(\slave_memory[10][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[9]_5 [5]),
        .O(\slave_memory[9][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[9][6]_i_1 
       (.I0(p_6_in[6]),
        .I1(\slave_memory[9][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][6]_i_2_n_0 ),
        .I4(\slave_memory[10][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[9]_5 [6]),
        .O(\slave_memory[9][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \slave_memory[9][7]_i_1 
       (.I0(p_6_in[7]),
        .I1(\slave_memory[9][7]_i_2_n_0 ),
        .I2(\w_strb_reg_reg_n_0_[3] ),
        .I3(\slave_memory[14][7]_i_4_n_0 ),
        .I4(\slave_memory[10][7]_i_2_n_0 ),
        .I5(\slave_memory_reg[9]_5 [7]),
        .O(\slave_memory[9][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \slave_memory[9][7]_i_2 
       (.I0(\aw_addr_reg_reg_n_0_[3] ),
        .I1(\aw_addr_reg_reg_n_0_[0] ),
        .I2(\aw_addr_reg_reg_n_0_[2] ),
        .I3(\aw_addr_reg_reg_n_0_[1] ),
        .O(\slave_memory[9][7]_i_2_n_0 ));
  FDRE \slave_memory_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[0][0]_i_1_n_0 ),
        .Q(\slave_memory_reg[0]_14 [0]),
        .R(1'b0));
  FDRE \slave_memory_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[0][1]_i_1_n_0 ),
        .Q(\slave_memory_reg[0]_14 [1]),
        .R(1'b0));
  FDRE \slave_memory_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[0][2]_i_1_n_0 ),
        .Q(\slave_memory_reg[0]_14 [2]),
        .R(1'b0));
  FDRE \slave_memory_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[0][3]_i_1_n_0 ),
        .Q(\slave_memory_reg[0]_14 [3]),
        .R(1'b0));
  FDRE \slave_memory_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[0][4]_i_1_n_0 ),
        .Q(\slave_memory_reg[0]_14 [4]),
        .R(1'b0));
  FDRE \slave_memory_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[0][5]_i_1_n_0 ),
        .Q(\slave_memory_reg[0]_14 [5]),
        .R(1'b0));
  FDRE \slave_memory_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[0][6]_i_1_n_0 ),
        .Q(\slave_memory_reg[0]_14 [6]),
        .R(1'b0));
  FDRE \slave_memory_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[0][7]_i_1_n_0 ),
        .Q(\slave_memory_reg[0]_14 [7]),
        .R(1'b0));
  FDRE \slave_memory_reg[10][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[10][0]_i_1_n_0 ),
        .Q(\slave_memory_reg[10]_4 [0]),
        .R(1'b0));
  FDRE \slave_memory_reg[10][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[10][1]_i_1_n_0 ),
        .Q(\slave_memory_reg[10]_4 [1]),
        .R(1'b0));
  FDRE \slave_memory_reg[10][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[10][2]_i_1_n_0 ),
        .Q(\slave_memory_reg[10]_4 [2]),
        .R(1'b0));
  FDRE \slave_memory_reg[10][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[10][3]_i_1_n_0 ),
        .Q(\slave_memory_reg[10]_4 [3]),
        .R(1'b0));
  FDRE \slave_memory_reg[10][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[10][4]_i_1_n_0 ),
        .Q(\slave_memory_reg[10]_4 [4]),
        .R(1'b0));
  FDRE \slave_memory_reg[10][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[10][5]_i_1_n_0 ),
        .Q(\slave_memory_reg[10]_4 [5]),
        .R(1'b0));
  FDRE \slave_memory_reg[10][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[10][6]_i_1_n_0 ),
        .Q(\slave_memory_reg[10]_4 [6]),
        .R(1'b0));
  FDRE \slave_memory_reg[10][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[10][7]_i_1_n_0 ),
        .Q(\slave_memory_reg[10]_4 [7]),
        .R(1'b0));
  FDRE \slave_memory_reg[11][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[11][0]_i_1_n_0 ),
        .Q(\slave_memory_reg[11]_3 [0]),
        .R(1'b0));
  FDRE \slave_memory_reg[11][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[11][1]_i_1_n_0 ),
        .Q(\slave_memory_reg[11]_3 [1]),
        .R(1'b0));
  FDRE \slave_memory_reg[11][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[11][2]_i_1_n_0 ),
        .Q(\slave_memory_reg[11]_3 [2]),
        .R(1'b0));
  FDRE \slave_memory_reg[11][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[11][3]_i_1_n_0 ),
        .Q(\slave_memory_reg[11]_3 [3]),
        .R(1'b0));
  FDRE \slave_memory_reg[11][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[11][4]_i_1_n_0 ),
        .Q(\slave_memory_reg[11]_3 [4]),
        .R(1'b0));
  FDRE \slave_memory_reg[11][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[11][5]_i_1_n_0 ),
        .Q(\slave_memory_reg[11]_3 [5]),
        .R(1'b0));
  FDRE \slave_memory_reg[11][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[11][6]_i_1_n_0 ),
        .Q(\slave_memory_reg[11]_3 [6]),
        .R(1'b0));
  FDRE \slave_memory_reg[11][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[11][7]_i_1_n_0 ),
        .Q(\slave_memory_reg[11]_3 [7]),
        .R(1'b0));
  FDRE \slave_memory_reg[12][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[12][0]_i_1_n_0 ),
        .Q(\slave_memory_reg[12]_2 [0]),
        .R(1'b0));
  FDRE \slave_memory_reg[12][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[12][1]_i_1_n_0 ),
        .Q(\slave_memory_reg[12]_2 [1]),
        .R(1'b0));
  FDRE \slave_memory_reg[12][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[12][2]_i_1_n_0 ),
        .Q(\slave_memory_reg[12]_2 [2]),
        .R(1'b0));
  FDRE \slave_memory_reg[12][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[12][3]_i_1_n_0 ),
        .Q(\slave_memory_reg[12]_2 [3]),
        .R(1'b0));
  FDRE \slave_memory_reg[12][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[12][4]_i_1_n_0 ),
        .Q(\slave_memory_reg[12]_2 [4]),
        .R(1'b0));
  FDRE \slave_memory_reg[12][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[12][5]_i_1_n_0 ),
        .Q(\slave_memory_reg[12]_2 [5]),
        .R(1'b0));
  FDRE \slave_memory_reg[12][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[12][6]_i_1_n_0 ),
        .Q(\slave_memory_reg[12]_2 [6]),
        .R(1'b0));
  FDRE \slave_memory_reg[12][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[12][7]_i_1_n_0 ),
        .Q(\slave_memory_reg[12]_2 [7]),
        .R(1'b0));
  FDRE \slave_memory_reg[13][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[13][0]_i_1_n_0 ),
        .Q(\slave_memory_reg[13]_1 [0]),
        .R(1'b0));
  FDRE \slave_memory_reg[13][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[13][1]_i_1_n_0 ),
        .Q(\slave_memory_reg[13]_1 [1]),
        .R(1'b0));
  FDRE \slave_memory_reg[13][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[13][2]_i_1_n_0 ),
        .Q(\slave_memory_reg[13]_1 [2]),
        .R(1'b0));
  FDRE \slave_memory_reg[13][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[13][3]_i_1_n_0 ),
        .Q(\slave_memory_reg[13]_1 [3]),
        .R(1'b0));
  FDRE \slave_memory_reg[13][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[13][4]_i_1_n_0 ),
        .Q(\slave_memory_reg[13]_1 [4]),
        .R(1'b0));
  FDRE \slave_memory_reg[13][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[13][5]_i_1_n_0 ),
        .Q(\slave_memory_reg[13]_1 [5]),
        .R(1'b0));
  FDRE \slave_memory_reg[13][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[13][6]_i_1_n_0 ),
        .Q(\slave_memory_reg[13]_1 [6]),
        .R(1'b0));
  FDRE \slave_memory_reg[13][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[13][7]_i_1_n_0 ),
        .Q(\slave_memory_reg[13]_1 [7]),
        .R(1'b0));
  FDRE \slave_memory_reg[14][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(p_0_in__5[0]),
        .Q(\slave_memory_reg[14]_0 [0]),
        .R(1'b0));
  MUXF7 \slave_memory_reg[14][0]_i_3 
       (.I0(\slave_memory[14][0]_i_5_n_0 ),
        .I1(\slave_memory[14][0]_i_6_n_0 ),
        .O(\slave_memory_reg[14][0]_i_3_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  MUXF7 \slave_memory_reg[14][0]_i_4 
       (.I0(\slave_memory[14][0]_i_7_n_0 ),
        .I1(\slave_memory[14][0]_i_8_n_0 ),
        .O(\slave_memory_reg[14][0]_i_4_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  FDRE \slave_memory_reg[14][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(p_0_in__5[1]),
        .Q(\slave_memory_reg[14]_0 [1]),
        .R(1'b0));
  MUXF7 \slave_memory_reg[14][1]_i_3 
       (.I0(\slave_memory[14][1]_i_5_n_0 ),
        .I1(\slave_memory[14][1]_i_6_n_0 ),
        .O(\slave_memory_reg[14][1]_i_3_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  MUXF7 \slave_memory_reg[14][1]_i_4 
       (.I0(\slave_memory[14][1]_i_7_n_0 ),
        .I1(\slave_memory[14][1]_i_8_n_0 ),
        .O(\slave_memory_reg[14][1]_i_4_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  FDRE \slave_memory_reg[14][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(p_0_in__5[2]),
        .Q(\slave_memory_reg[14]_0 [2]),
        .R(1'b0));
  MUXF7 \slave_memory_reg[14][2]_i_3 
       (.I0(\slave_memory[14][2]_i_5_n_0 ),
        .I1(\slave_memory[14][2]_i_6_n_0 ),
        .O(\slave_memory_reg[14][2]_i_3_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  MUXF7 \slave_memory_reg[14][2]_i_4 
       (.I0(\slave_memory[14][2]_i_7_n_0 ),
        .I1(\slave_memory[14][2]_i_8_n_0 ),
        .O(\slave_memory_reg[14][2]_i_4_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  FDRE \slave_memory_reg[14][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(p_0_in__5[3]),
        .Q(\slave_memory_reg[14]_0 [3]),
        .R(1'b0));
  MUXF7 \slave_memory_reg[14][3]_i_3 
       (.I0(\slave_memory[14][3]_i_5_n_0 ),
        .I1(\slave_memory[14][3]_i_6_n_0 ),
        .O(\slave_memory_reg[14][3]_i_3_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  MUXF7 \slave_memory_reg[14][3]_i_4 
       (.I0(\slave_memory[14][3]_i_7_n_0 ),
        .I1(\slave_memory[14][3]_i_8_n_0 ),
        .O(\slave_memory_reg[14][3]_i_4_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  FDRE \slave_memory_reg[14][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(p_0_in__5[4]),
        .Q(\slave_memory_reg[14]_0 [4]),
        .R(1'b0));
  MUXF7 \slave_memory_reg[14][4]_i_3 
       (.I0(\slave_memory[14][4]_i_5_n_0 ),
        .I1(\slave_memory[14][4]_i_6_n_0 ),
        .O(\slave_memory_reg[14][4]_i_3_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  MUXF7 \slave_memory_reg[14][4]_i_4 
       (.I0(\slave_memory[14][4]_i_7_n_0 ),
        .I1(\slave_memory[14][4]_i_8_n_0 ),
        .O(\slave_memory_reg[14][4]_i_4_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  FDRE \slave_memory_reg[14][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(p_0_in__5[5]),
        .Q(\slave_memory_reg[14]_0 [5]),
        .R(1'b0));
  MUXF7 \slave_memory_reg[14][5]_i_3 
       (.I0(\slave_memory[14][5]_i_5_n_0 ),
        .I1(\slave_memory[14][5]_i_6_n_0 ),
        .O(\slave_memory_reg[14][5]_i_3_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  MUXF7 \slave_memory_reg[14][5]_i_4 
       (.I0(\slave_memory[14][5]_i_7_n_0 ),
        .I1(\slave_memory[14][5]_i_8_n_0 ),
        .O(\slave_memory_reg[14][5]_i_4_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  FDRE \slave_memory_reg[14][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(p_0_in__5[6]),
        .Q(\slave_memory_reg[14]_0 [6]),
        .R(1'b0));
  MUXF7 \slave_memory_reg[14][6]_i_3 
       (.I0(\slave_memory[14][6]_i_5_n_0 ),
        .I1(\slave_memory[14][6]_i_6_n_0 ),
        .O(\slave_memory_reg[14][6]_i_3_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  MUXF7 \slave_memory_reg[14][6]_i_4 
       (.I0(\slave_memory[14][6]_i_7_n_0 ),
        .I1(\slave_memory[14][6]_i_8_n_0 ),
        .O(\slave_memory_reg[14][6]_i_4_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  FDRE \slave_memory_reg[14][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(p_0_in__5[7]),
        .Q(\slave_memory_reg[14]_0 [7]),
        .R(1'b0));
  MUXF7 \slave_memory_reg[14][7]_i_6 
       (.I0(\slave_memory[14][7]_i_8_n_0 ),
        .I1(\slave_memory[14][7]_i_9_n_0 ),
        .O(\slave_memory_reg[14][7]_i_6_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  MUXF7 \slave_memory_reg[14][7]_i_7 
       (.I0(\slave_memory[14][7]_i_10_n_0 ),
        .I1(\slave_memory[14][7]_i_11_n_0 ),
        .O(\slave_memory_reg[14][7]_i_7_n_0 ),
        .S(\aw_addr_reg_reg_n_0_[2] ));
  FDRE \slave_memory_reg[15][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[15][0]_i_1_n_0 ),
        .Q(\slave_memory_reg[15]_15 [0]),
        .R(1'b0));
  FDRE \slave_memory_reg[15][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[15][1]_i_1_n_0 ),
        .Q(\slave_memory_reg[15]_15 [1]),
        .R(1'b0));
  FDRE \slave_memory_reg[15][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[15][2]_i_1_n_0 ),
        .Q(\slave_memory_reg[15]_15 [2]),
        .R(1'b0));
  FDRE \slave_memory_reg[15][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[15][3]_i_1_n_0 ),
        .Q(\slave_memory_reg[15]_15 [3]),
        .R(1'b0));
  FDRE \slave_memory_reg[15][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[15][4]_i_1_n_0 ),
        .Q(\slave_memory_reg[15]_15 [4]),
        .R(1'b0));
  FDRE \slave_memory_reg[15][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[15][5]_i_1_n_0 ),
        .Q(\slave_memory_reg[15]_15 [5]),
        .R(1'b0));
  FDRE \slave_memory_reg[15][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[15][6]_i_1_n_0 ),
        .Q(\slave_memory_reg[15]_15 [6]),
        .R(1'b0));
  FDRE \slave_memory_reg[15][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[15][7]_i_1_n_0 ),
        .Q(\slave_memory_reg[15]_15 [7]),
        .R(1'b0));
  FDRE \slave_memory_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[1][0]_i_1_n_0 ),
        .Q(\slave_memory_reg[1]_13 [0]),
        .R(1'b0));
  FDRE \slave_memory_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[1][1]_i_1_n_0 ),
        .Q(\slave_memory_reg[1]_13 [1]),
        .R(1'b0));
  FDRE \slave_memory_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[1][2]_i_1_n_0 ),
        .Q(\slave_memory_reg[1]_13 [2]),
        .R(1'b0));
  FDRE \slave_memory_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[1][3]_i_1_n_0 ),
        .Q(\slave_memory_reg[1]_13 [3]),
        .R(1'b0));
  FDRE \slave_memory_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[1][4]_i_1_n_0 ),
        .Q(\slave_memory_reg[1]_13 [4]),
        .R(1'b0));
  FDRE \slave_memory_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[1][5]_i_1_n_0 ),
        .Q(\slave_memory_reg[1]_13 [5]),
        .R(1'b0));
  FDRE \slave_memory_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[1][6]_i_1_n_0 ),
        .Q(\slave_memory_reg[1]_13 [6]),
        .R(1'b0));
  FDRE \slave_memory_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[1][7]_i_1_n_0 ),
        .Q(\slave_memory_reg[1]_13 [7]),
        .R(1'b0));
  FDRE \slave_memory_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[2][0]_i_1_n_0 ),
        .Q(\slave_memory_reg[2]_12 [0]),
        .R(1'b0));
  FDRE \slave_memory_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[2][1]_i_1_n_0 ),
        .Q(\slave_memory_reg[2]_12 [1]),
        .R(1'b0));
  FDRE \slave_memory_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[2][2]_i_1_n_0 ),
        .Q(\slave_memory_reg[2]_12 [2]),
        .R(1'b0));
  FDRE \slave_memory_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[2][3]_i_1_n_0 ),
        .Q(\slave_memory_reg[2]_12 [3]),
        .R(1'b0));
  FDRE \slave_memory_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[2][4]_i_1_n_0 ),
        .Q(\slave_memory_reg[2]_12 [4]),
        .R(1'b0));
  FDRE \slave_memory_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[2][5]_i_1_n_0 ),
        .Q(\slave_memory_reg[2]_12 [5]),
        .R(1'b0));
  FDRE \slave_memory_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[2][6]_i_1_n_0 ),
        .Q(\slave_memory_reg[2]_12 [6]),
        .R(1'b0));
  FDRE \slave_memory_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[2][7]_i_1_n_0 ),
        .Q(\slave_memory_reg[2]_12 [7]),
        .R(1'b0));
  FDRE \slave_memory_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[3][0]_i_1_n_0 ),
        .Q(\slave_memory_reg[3]_11 [0]),
        .R(1'b0));
  FDRE \slave_memory_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[3][1]_i_1_n_0 ),
        .Q(\slave_memory_reg[3]_11 [1]),
        .R(1'b0));
  FDRE \slave_memory_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[3][2]_i_1_n_0 ),
        .Q(\slave_memory_reg[3]_11 [2]),
        .R(1'b0));
  FDRE \slave_memory_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[3][3]_i_1_n_0 ),
        .Q(\slave_memory_reg[3]_11 [3]),
        .R(1'b0));
  FDRE \slave_memory_reg[3][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[3][4]_i_1_n_0 ),
        .Q(\slave_memory_reg[3]_11 [4]),
        .R(1'b0));
  FDRE \slave_memory_reg[3][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[3][5]_i_1_n_0 ),
        .Q(\slave_memory_reg[3]_11 [5]),
        .R(1'b0));
  FDRE \slave_memory_reg[3][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[3][6]_i_1_n_0 ),
        .Q(\slave_memory_reg[3]_11 [6]),
        .R(1'b0));
  FDRE \slave_memory_reg[3][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[3][7]_i_1_n_0 ),
        .Q(\slave_memory_reg[3]_11 [7]),
        .R(1'b0));
  FDRE \slave_memory_reg[4][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[4][0]_i_1_n_0 ),
        .Q(\slave_memory_reg[4]_10 [0]),
        .R(1'b0));
  FDRE \slave_memory_reg[4][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[4][1]_i_1_n_0 ),
        .Q(\slave_memory_reg[4]_10 [1]),
        .R(1'b0));
  FDRE \slave_memory_reg[4][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[4][2]_i_1_n_0 ),
        .Q(\slave_memory_reg[4]_10 [2]),
        .R(1'b0));
  FDRE \slave_memory_reg[4][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[4][3]_i_1_n_0 ),
        .Q(\slave_memory_reg[4]_10 [3]),
        .R(1'b0));
  FDRE \slave_memory_reg[4][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[4][4]_i_1_n_0 ),
        .Q(\slave_memory_reg[4]_10 [4]),
        .R(1'b0));
  FDRE \slave_memory_reg[4][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[4][5]_i_1_n_0 ),
        .Q(\slave_memory_reg[4]_10 [5]),
        .R(1'b0));
  FDRE \slave_memory_reg[4][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[4][6]_i_1_n_0 ),
        .Q(\slave_memory_reg[4]_10 [6]),
        .R(1'b0));
  FDRE \slave_memory_reg[4][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[4][7]_i_1_n_0 ),
        .Q(\slave_memory_reg[4]_10 [7]),
        .R(1'b0));
  FDRE \slave_memory_reg[5][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[5][0]_i_1_n_0 ),
        .Q(\slave_memory_reg[5]_9 [0]),
        .R(1'b0));
  FDRE \slave_memory_reg[5][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[5][1]_i_1_n_0 ),
        .Q(\slave_memory_reg[5]_9 [1]),
        .R(1'b0));
  FDRE \slave_memory_reg[5][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[5][2]_i_1_n_0 ),
        .Q(\slave_memory_reg[5]_9 [2]),
        .R(1'b0));
  FDRE \slave_memory_reg[5][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[5][3]_i_1_n_0 ),
        .Q(\slave_memory_reg[5]_9 [3]),
        .R(1'b0));
  FDRE \slave_memory_reg[5][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[5][4]_i_1_n_0 ),
        .Q(\slave_memory_reg[5]_9 [4]),
        .R(1'b0));
  FDRE \slave_memory_reg[5][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[5][5]_i_1_n_0 ),
        .Q(\slave_memory_reg[5]_9 [5]),
        .R(1'b0));
  FDRE \slave_memory_reg[5][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[5][6]_i_1_n_0 ),
        .Q(\slave_memory_reg[5]_9 [6]),
        .R(1'b0));
  FDRE \slave_memory_reg[5][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[5][7]_i_1_n_0 ),
        .Q(\slave_memory_reg[5]_9 [7]),
        .R(1'b0));
  FDRE \slave_memory_reg[6][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[6][0]_i_1_n_0 ),
        .Q(\slave_memory_reg[6]_8 [0]),
        .R(1'b0));
  FDRE \slave_memory_reg[6][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[6][1]_i_1_n_0 ),
        .Q(\slave_memory_reg[6]_8 [1]),
        .R(1'b0));
  FDRE \slave_memory_reg[6][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[6][2]_i_1_n_0 ),
        .Q(\slave_memory_reg[6]_8 [2]),
        .R(1'b0));
  FDRE \slave_memory_reg[6][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[6][3]_i_1_n_0 ),
        .Q(\slave_memory_reg[6]_8 [3]),
        .R(1'b0));
  FDRE \slave_memory_reg[6][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[6][4]_i_1_n_0 ),
        .Q(\slave_memory_reg[6]_8 [4]),
        .R(1'b0));
  FDRE \slave_memory_reg[6][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[6][5]_i_1_n_0 ),
        .Q(\slave_memory_reg[6]_8 [5]),
        .R(1'b0));
  FDRE \slave_memory_reg[6][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[6][6]_i_1_n_0 ),
        .Q(\slave_memory_reg[6]_8 [6]),
        .R(1'b0));
  FDRE \slave_memory_reg[6][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[6][7]_i_1_n_0 ),
        .Q(\slave_memory_reg[6]_8 [7]),
        .R(1'b0));
  FDRE \slave_memory_reg[7][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[7][0]_i_1_n_0 ),
        .Q(\slave_memory_reg[7]_7 [0]),
        .R(1'b0));
  FDRE \slave_memory_reg[7][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[7][1]_i_1_n_0 ),
        .Q(\slave_memory_reg[7]_7 [1]),
        .R(1'b0));
  FDRE \slave_memory_reg[7][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[7][2]_i_1_n_0 ),
        .Q(\slave_memory_reg[7]_7 [2]),
        .R(1'b0));
  FDRE \slave_memory_reg[7][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[7][3]_i_1_n_0 ),
        .Q(\slave_memory_reg[7]_7 [3]),
        .R(1'b0));
  FDRE \slave_memory_reg[7][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[7][4]_i_1_n_0 ),
        .Q(\slave_memory_reg[7]_7 [4]),
        .R(1'b0));
  FDRE \slave_memory_reg[7][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[7][5]_i_1_n_0 ),
        .Q(\slave_memory_reg[7]_7 [5]),
        .R(1'b0));
  FDRE \slave_memory_reg[7][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[7][6]_i_1_n_0 ),
        .Q(\slave_memory_reg[7]_7 [6]),
        .R(1'b0));
  FDRE \slave_memory_reg[7][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[7][7]_i_1_n_0 ),
        .Q(\slave_memory_reg[7]_7 [7]),
        .R(1'b0));
  FDRE \slave_memory_reg[8][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[8][0]_i_1_n_0 ),
        .Q(\slave_memory_reg[8]_6 [0]),
        .R(1'b0));
  FDRE \slave_memory_reg[8][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[8][1]_i_1_n_0 ),
        .Q(\slave_memory_reg[8]_6 [1]),
        .R(1'b0));
  FDRE \slave_memory_reg[8][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[8][2]_i_1_n_0 ),
        .Q(\slave_memory_reg[8]_6 [2]),
        .R(1'b0));
  FDRE \slave_memory_reg[8][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[8][3]_i_1_n_0 ),
        .Q(\slave_memory_reg[8]_6 [3]),
        .R(1'b0));
  FDRE \slave_memory_reg[8][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[8][4]_i_1_n_0 ),
        .Q(\slave_memory_reg[8]_6 [4]),
        .R(1'b0));
  FDRE \slave_memory_reg[8][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[8][5]_i_1_n_0 ),
        .Q(\slave_memory_reg[8]_6 [5]),
        .R(1'b0));
  FDRE \slave_memory_reg[8][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[8][6]_i_1_n_0 ),
        .Q(\slave_memory_reg[8]_6 [6]),
        .R(1'b0));
  FDRE \slave_memory_reg[8][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[8][7]_i_1_n_0 ),
        .Q(\slave_memory_reg[8]_6 [7]),
        .R(1'b0));
  FDRE \slave_memory_reg[9][0] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[9][0]_i_1_n_0 ),
        .Q(\slave_memory_reg[9]_5 [0]),
        .R(1'b0));
  FDRE \slave_memory_reg[9][1] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[9][1]_i_1_n_0 ),
        .Q(\slave_memory_reg[9]_5 [1]),
        .R(1'b0));
  FDRE \slave_memory_reg[9][2] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[9][2]_i_1_n_0 ),
        .Q(\slave_memory_reg[9]_5 [2]),
        .R(1'b0));
  FDRE \slave_memory_reg[9][3] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[9][3]_i_1_n_0 ),
        .Q(\slave_memory_reg[9]_5 [3]),
        .R(1'b0));
  FDRE \slave_memory_reg[9][4] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[9][4]_i_1_n_0 ),
        .Q(\slave_memory_reg[9]_5 [4]),
        .R(1'b0));
  FDRE \slave_memory_reg[9][5] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[9][5]_i_1_n_0 ),
        .Q(\slave_memory_reg[9]_5 [5]),
        .R(1'b0));
  FDRE \slave_memory_reg[9][6] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[9][6]_i_1_n_0 ),
        .Q(\slave_memory_reg[9]_5 [6]),
        .R(1'b0));
  FDRE \slave_memory_reg[9][7] 
       (.C(s00_axi_aclk),
        .CE(\slave_memory[14][7]_i_1_n_0 ),
        .D(\slave_memory[9][7]_i_1_n_0 ),
        .Q(\slave_memory_reg[9]_5 [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \w_strb_reg_next[0]_i_1__0 
       (.I0(\w_strb_reg_next_reg[3]_1 [0]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(p_0_in),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(w_strb_reg_next[0]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \w_strb_reg_next[1]_i_1__0 
       (.I0(\w_strb_reg_next_reg[3]_1 [1]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\w_strb_reg_reg_n_0_[1] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(w_strb_reg_next[1]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \w_strb_reg_next[2]_i_1__0 
       (.I0(\w_strb_reg_next_reg[3]_1 [2]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\w_strb_reg_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(w_strb_reg_next[2]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \w_strb_reg_next[3]_i_1__0 
       (.I0(\w_strb_reg_next_reg[3]_1 [3]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\w_strb_reg_reg_n_0_[3] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(w_strb_reg_next[3]));
  FDRE \w_strb_reg_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(w_strb_reg_next[0]),
        .Q(\w_strb_reg_next_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \w_strb_reg_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(w_strb_reg_next[1]),
        .Q(\w_strb_reg_next_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \w_strb_reg_next_reg[2] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(w_strb_reg_next[2]),
        .Q(\w_strb_reg_next_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \w_strb_reg_next_reg[3] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(w_strb_reg_next[3]),
        .Q(\w_strb_reg_next_reg_n_0_[3] ),
        .R(1'b0));
  FDCE \w_strb_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\w_strb_reg_next_reg_n_0_[0] ),
        .Q(p_0_in));
  FDCE \w_strb_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\w_strb_reg_next_reg_n_0_[1] ),
        .Q(\w_strb_reg_reg_n_0_[1] ));
  FDCE \w_strb_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\w_strb_reg_next_reg_n_0_[2] ),
        .Q(\w_strb_reg_reg_n_0_[2] ));
  FDCE \w_strb_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\w_strb_reg_next_reg_n_0_[3] ),
        .Q(\w_strb_reg_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[0]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [0]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[0] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[0]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[10]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [10]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[10] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[10]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[11]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [11]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[11] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[11]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[12]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [12]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[12] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[12]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[13]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [13]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[13] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[13]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[14]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [14]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[14] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[14]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[15]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [15]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[15] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[15]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[16]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [16]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[16] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[16]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[17]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [17]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[17] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[17]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[18]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [18]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[18] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[18]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[19]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [19]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[19] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[19]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[1]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [1]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[1] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[1]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[20]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [20]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[20] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[20]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[21]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [21]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[21] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[21]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[22]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [22]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[22] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[22]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[23]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [23]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[23] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[23]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[24]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [24]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(p_6_in[0]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[24]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[25]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [25]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(p_6_in[1]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[25]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[26]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [26]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(p_6_in[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[26]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[27]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [27]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(p_6_in[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[27]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[28]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [28]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(p_6_in[4]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[28]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[29]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [29]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(p_6_in[5]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[29]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[2]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [2]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[2]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[30]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [30]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(p_6_in[6]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[30]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[31]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [31]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(p_6_in[7]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[31]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[3]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [3]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[3] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[3]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[4]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [4]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[4] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[4]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[5]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [5]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[5]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[6]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [6]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[6] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[6]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[7]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [7]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[7] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[7]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[8]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [8]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[8] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[8]));
  LUT6 #(
    .INIT(64'hFF00BF80FF00FF00)) 
    \write_data_reg_next[9]_i_1 
       (.I0(\write_data_reg_next_reg[31]_0 [9]),
        .I1(AWREADY_reg_0),
        .I2(\w_strb_reg_next_reg[3]_0 ),
        .I3(\write_data_reg_reg_n_0_[9] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(write_data_reg_next[9]));
  FDRE \write_data_reg_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[0]),
        .Q(\write_data_reg_next_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[10] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[10]),
        .Q(\write_data_reg_next_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[11] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[11]),
        .Q(\write_data_reg_next_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[12] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[12]),
        .Q(\write_data_reg_next_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[13] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[13]),
        .Q(\write_data_reg_next_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[14] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[14]),
        .Q(\write_data_reg_next_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[15] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[15]),
        .Q(\write_data_reg_next_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[16] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[16]),
        .Q(\write_data_reg_next_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[17] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[17]),
        .Q(\write_data_reg_next_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[18] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[18]),
        .Q(\write_data_reg_next_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[19] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[19]),
        .Q(\write_data_reg_next_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[1]),
        .Q(\write_data_reg_next_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[20] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[20]),
        .Q(\write_data_reg_next_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[21] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[21]),
        .Q(\write_data_reg_next_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[22] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[22]),
        .Q(\write_data_reg_next_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[23] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[23]),
        .Q(\write_data_reg_next_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[24] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[24]),
        .Q(\write_data_reg_next_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[25] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[25]),
        .Q(\write_data_reg_next_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[26] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[26]),
        .Q(\write_data_reg_next_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[27] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[27]),
        .Q(\write_data_reg_next_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[28] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[28]),
        .Q(\write_data_reg_next_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[29] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[29]),
        .Q(\write_data_reg_next_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[2] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[2]),
        .Q(\write_data_reg_next_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[30] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[30]),
        .Q(\write_data_reg_next_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[31] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[31]),
        .Q(\write_data_reg_next_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[3] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[3]),
        .Q(\write_data_reg_next_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[4] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[4]),
        .Q(\write_data_reg_next_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[5] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[5]),
        .Q(\write_data_reg_next_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[6] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[6]),
        .Q(\write_data_reg_next_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[7] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[7]),
        .Q(\write_data_reg_next_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[8] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[8]),
        .Q(\write_data_reg_next_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[9] 
       (.C(s00_axi_aclk),
        .CE(SR),
        .D(write_data_reg_next[9]),
        .Q(\write_data_reg_next_reg_n_0_[9] ),
        .R(1'b0));
  FDCE \write_data_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[0] ),
        .Q(\write_data_reg_reg_n_0_[0] ));
  FDCE \write_data_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[10] ),
        .Q(\write_data_reg_reg_n_0_[10] ));
  FDCE \write_data_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[11] ),
        .Q(\write_data_reg_reg_n_0_[11] ));
  FDCE \write_data_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[12] ),
        .Q(\write_data_reg_reg_n_0_[12] ));
  FDCE \write_data_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[13] ),
        .Q(\write_data_reg_reg_n_0_[13] ));
  FDCE \write_data_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[14] ),
        .Q(\write_data_reg_reg_n_0_[14] ));
  FDCE \write_data_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[15] ),
        .Q(\write_data_reg_reg_n_0_[15] ));
  FDCE \write_data_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[16] ),
        .Q(\write_data_reg_reg_n_0_[16] ));
  FDCE \write_data_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[17] ),
        .Q(\write_data_reg_reg_n_0_[17] ));
  FDCE \write_data_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[18] ),
        .Q(\write_data_reg_reg_n_0_[18] ));
  FDCE \write_data_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[19] ),
        .Q(\write_data_reg_reg_n_0_[19] ));
  FDCE \write_data_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[1] ),
        .Q(\write_data_reg_reg_n_0_[1] ));
  FDCE \write_data_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[20] ),
        .Q(\write_data_reg_reg_n_0_[20] ));
  FDCE \write_data_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[21] ),
        .Q(\write_data_reg_reg_n_0_[21] ));
  FDCE \write_data_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[22] ),
        .Q(\write_data_reg_reg_n_0_[22] ));
  FDCE \write_data_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[23] ),
        .Q(\write_data_reg_reg_n_0_[23] ));
  FDCE \write_data_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[24] ),
        .Q(p_6_in[0]));
  FDCE \write_data_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[25] ),
        .Q(p_6_in[1]));
  FDCE \write_data_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[26] ),
        .Q(p_6_in[2]));
  FDCE \write_data_reg_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[27] ),
        .Q(p_6_in[3]));
  FDCE \write_data_reg_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[28] ),
        .Q(p_6_in[4]));
  FDCE \write_data_reg_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[29] ),
        .Q(p_6_in[5]));
  FDCE \write_data_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[2] ),
        .Q(\write_data_reg_reg_n_0_[2] ));
  FDCE \write_data_reg_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[30] ),
        .Q(p_6_in[6]));
  FDCE \write_data_reg_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[31] ),
        .Q(p_6_in[7]));
  FDCE \write_data_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[3] ),
        .Q(\write_data_reg_reg_n_0_[3] ));
  FDCE \write_data_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[4] ),
        .Q(\write_data_reg_reg_n_0_[4] ));
  FDCE \write_data_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[5] ),
        .Q(\write_data_reg_reg_n_0_[5] ));
  FDCE \write_data_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[6] ),
        .Q(\write_data_reg_reg_n_0_[6] ));
  FDCE \write_data_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[7] ),
        .Q(\write_data_reg_reg_n_0_[7] ));
  FDCE \write_data_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[8] ),
        .Q(\write_data_reg_reg_n_0_[8] ));
  FDCE \write_data_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\write_data_reg_next_reg_n_0_[9] ),
        .Q(\write_data_reg_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hF7FFF0AF)) 
    \write_state_next[0]_i_1 
       (.I0(\w_strb_reg_next_reg[3]_0 ),
        .I1(AWREADY_reg_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(write_state_next[0]),
        .O(\write_state_next[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F500800)) 
    \write_state_next[1]_i_1 
       (.I0(\w_strb_reg_next_reg[3]_0 ),
        .I1(AWREADY_reg_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(write_state_next[1]),
        .O(\write_state_next[1]_i_1_n_0 ));
  FDSE \write_state_next_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\write_state_next[0]_i_1_n_0 ),
        .Q(write_state_next[0]),
        .S(s00_axi_aresetn));
  FDRE \write_state_next_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\write_state_next[1]_i_1_n_0 ),
        .Q(write_state_next[1]),
        .R(s00_axi_aresetn));
  (* FSM_ENCODED_STATES = "WRITE_IDLE:01,WRITE_READY:10," *) 
  FDPE \write_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(write_state_next[0]),
        .PRE(s00_axi_aresetn),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "WRITE_IDLE:01,WRITE_READY:10," *) 
  FDCE \write_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(write_state_next[1]),
        .Q(Q[1]));
endmodule

(* CHECK_LICENSE_TYPE = "micro_blaze_AMBA_BUS_myip_axi_led_on_off_0_0,myip_axi_led_on_off_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_axi_led_on_off_v1_0,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (led,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output [15:0]led;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire [15:0]led;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_axi_led_on_off_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .led(led),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_axi_led_on_off_v1_0
   (led,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output [15:0]led;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire ARVALID;
  wire ARVALID_i_1_n_0;
  wire AWREADY;
  wire AWREADY_i_1_n_0;
  wire AWVALID;
  wire AWVALID_i_1_n_0;
  wire [1:0]\DUT_MASTER/ar_state ;
  wire [1:0]\DUT_MASTER/aw_state ;
  wire [1:0]\DUT_MASTER/r_state ;
  wire [1:0]\DUT_MASTER/w_state ;
  wire [1:1]\DUT_slave/aw_state_reg ;
  wire [1:1]\DUT_slave/r_state_reg ;
  wire [1:1]\DUT_slave/write_state_reg ;
  wire RREADY;
  wire RREADY_i_1_n_0;
  wire RVALID;
  wire RVALID_i_1_n_0;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire WREADY;
  wire WREADY_i_1_n_0;
  wire WVALID;
  wire WVALID_i_1_n_0;
  wire aw_en_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire [15:0]led;
  wire myip_axi_led_on_off_v1_0_S00_AXI_inst_n_11;
  wire myip_axi_led_on_off_v1_0_S00_AXI_inst_n_14;
  wire myip_axi_led_on_off_v1_0_S00_AXI_inst_n_16;
  wire myip_axi_led_on_off_v1_0_S00_AXI_inst_n_26;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  LUT3 #(
    .INIT(8'hD4)) 
    ARVALID_i_1
       (.I0(\DUT_MASTER/ar_state [0]),
        .I1(\DUT_MASTER/ar_state [1]),
        .I2(ARVALID),
        .O(ARVALID_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    AWREADY_i_1
       (.I0(myip_axi_led_on_off_v1_0_S00_AXI_inst_n_16),
        .I1(\DUT_slave/aw_state_reg ),
        .I2(AWREADY),
        .O(AWREADY_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    AWVALID_i_1
       (.I0(\DUT_MASTER/aw_state [0]),
        .I1(\DUT_MASTER/aw_state [1]),
        .I2(AWVALID),
        .O(AWVALID_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    RREADY_i_1
       (.I0(\DUT_MASTER/r_state [0]),
        .I1(\DUT_MASTER/r_state [1]),
        .I2(RREADY),
        .O(RREADY_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    RVALID_i_1
       (.I0(myip_axi_led_on_off_v1_0_S00_AXI_inst_n_26),
        .I1(\DUT_slave/r_state_reg ),
        .I2(RVALID),
        .O(RVALID_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    WREADY_i_1
       (.I0(myip_axi_led_on_off_v1_0_S00_AXI_inst_n_14),
        .I1(\DUT_slave/write_state_reg ),
        .I2(WREADY),
        .O(WREADY_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    WVALID_i_1
       (.I0(\DUT_MASTER/w_state [0]),
        .I1(\DUT_MASTER/w_state [1]),
        .I2(WVALID),
        .O(WVALID_i_1_n_0));
  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(myip_axi_led_on_off_v1_0_S00_AXI_inst_n_11),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_axi_led_on_off_v1_0_S00_AXI myip_axi_led_on_off_v1_0_S00_AXI_inst
       (.ARVALID(ARVALID),
        .ARVALID_reg(ARVALID_i_1_n_0),
        .AWREADY(AWREADY),
        .AWREADY_reg(AWREADY_i_1_n_0),
        .AWVALID(AWVALID),
        .AWVALID_reg(AWVALID_i_1_n_0),
        .Q({\DUT_slave/write_state_reg ,myip_axi_led_on_off_v1_0_S00_AXI_inst_n_14}),
        .RREADY(RREADY),
        .RREADY_reg(RREADY_i_1_n_0),
        .RVALID(RVALID),
        .RVALID_reg(RVALID_i_1_n_0),
        .WREADY(WREADY),
        .WREADY_reg(WREADY_i_1_n_0),
        .WVALID(WVALID),
        .WVALID_reg(WVALID_i_1_n_0),
        .\ar_state_reg[1] (\DUT_MASTER/ar_state ),
        .aw_en_reg_0(myip_axi_led_on_off_v1_0_S00_AXI_inst_n_11),
        .aw_en_reg_1(aw_en_i_1_n_0),
        .\aw_state_reg[1] ({\DUT_slave/aw_state_reg ,myip_axi_led_on_off_v1_0_S00_AXI_inst_n_16}),
        .\aw_state_reg[1]_0 (\DUT_MASTER/aw_state ),
        .axi_arready_reg_0(S_AXI_ARREADY),
        .axi_awready_reg_0(S_AXI_AWREADY),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rvalid_reg_0(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(S_AXI_WREADY),
        .led(led),
        .\r_state_reg[1] (\DUT_MASTER/r_state ),
        .\r_state_reg[1]_0 ({\DUT_slave/r_state_reg ,myip_axi_led_on_off_v1_0_S00_AXI_inst_n_26}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\w_state_reg[1] (\DUT_MASTER/w_state ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_axi_led_on_off_v1_0_S00_AXI
   (axi_wready_reg_0,
    axi_awready_reg_0,
    axi_arready_reg_0,
    AWVALID,
    WVALID,
    ARVALID,
    RREADY,
    AWREADY,
    WREADY,
    RVALID,
    s00_axi_bvalid,
    aw_en_reg_0,
    s00_axi_rvalid,
    Q,
    \aw_state_reg[1] ,
    \r_state_reg[1] ,
    \w_state_reg[1] ,
    \aw_state_reg[1]_0 ,
    \ar_state_reg[1] ,
    \r_state_reg[1]_0 ,
    led,
    s00_axi_rdata,
    s00_axi_aresetn,
    s00_axi_aclk,
    AWVALID_reg,
    WVALID_reg,
    ARVALID_reg,
    RREADY_reg,
    AWREADY_reg,
    WREADY_reg,
    RVALID_reg,
    axi_bvalid_reg_0,
    aw_en_reg_1,
    axi_rvalid_reg_0,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb);
  output axi_wready_reg_0;
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output AWVALID;
  output WVALID;
  output ARVALID;
  output RREADY;
  output AWREADY;
  output WREADY;
  output RVALID;
  output s00_axi_bvalid;
  output aw_en_reg_0;
  output s00_axi_rvalid;
  output [1:0]Q;
  output [1:0]\aw_state_reg[1] ;
  output [1:0]\r_state_reg[1] ;
  output [1:0]\w_state_reg[1] ;
  output [1:0]\aw_state_reg[1]_0 ;
  output [1:0]\ar_state_reg[1] ;
  output [1:0]\r_state_reg[1]_0 ;
  output [15:0]led;
  output [31:0]s00_axi_rdata;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input AWVALID_reg;
  input WVALID_reg;
  input ARVALID_reg;
  input RREADY_reg;
  input AWREADY_reg;
  input WREADY_reg;
  input RVALID_reg;
  input axi_bvalid_reg_0;
  input aw_en_reg_1;
  input axi_rvalid_reg_0;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;

  wire [3:0]ARADDR;
  wire ARREADY;
  wire ARVALID;
  wire ARVALID_reg;
  wire [3:0]AWADDR;
  wire AWREADY;
  wire AWREADY_reg;
  wire AWVALID;
  wire AWVALID_reg;
  wire DUT_slave_n_10;
  wire [1:0]Q;
  wire [7:0]RDATA;
  wire RREADY;
  wire RREADY_reg;
  wire RVALID;
  wire RVALID_reg;
  wire [31:0]WDATA;
  wire WREADY;
  wire WREADY_reg;
  wire [3:0]WSTRB;
  wire WVALID;
  wire WVALID_reg;
  wire [1:0]\ar_state_reg[1] ;
  wire aw_en_reg_0;
  wire aw_en_reg_1;
  wire [1:0]\aw_state_reg[1] ;
  wire [1:0]\aw_state_reg[1]_0 ;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_reg_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [15:0]led;
  wire [2:0]p_0_in;
  wire [31:7]p_1_in;
  wire [1:0]\r_state_reg[1] ;
  wire [1:0]\r_state_reg[1]_0 ;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [0:0]slv_reg0;
  wire [31:1]slv_reg0__0;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [0:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:1]slv_reg2__0;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [3:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:4]slv_reg5__0;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire [1:0]\w_state_reg[1] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master DUT_MASTER
       (.\ARADDR_reg[3]_0 (ARADDR),
        .ARREADY(ARREADY),
        .ARVALID(ARVALID),
        .ARVALID_reg_0(ARVALID_reg),
        .\AWADDR_reg[3]_0 (AWADDR),
        .AWVALID(AWVALID),
        .AWVALID_reg_0(AWVALID_reg),
        .D(reg_data_out[7:0]),
        .Q(\r_state_reg[1] ),
        .RREADY(RREADY),
        .RREADY_reg_0(RREADY_reg),
        .RVALID(RVALID),
        .SR(DUT_slave_n_10),
        .\WDATA_reg[31]_0 (WDATA),
        .WREADY(WREADY),
        .\WSTRB_reg[3]_0 (WSTRB),
        .WVALID_reg_0(WVALID),
        .WVALID_reg_1(WVALID_reg),
        .\ar_addr_reg_next_reg[3]_0 (slv_reg1[3:0]),
        .\ar_state_next_reg[1]_0 (slv_reg0),
        .\ar_state_reg[1]_0 (\ar_state_reg[1] ),
        .\aw_addr_reg_next_reg[3]_0 (slv_reg3[3:0]),
        .\aw_state_next_reg[0]_0 (AWREADY),
        .\aw_state_next_reg[1]_0 (slv_reg2),
        .\aw_state_reg[1]_0 (\aw_state_reg[1]_0 ),
        .\axi_rdata_reg[0] (\axi_rdata[0]_i_2_n_0 ),
        .\axi_rdata_reg[1] (\axi_rdata[1]_i_2_n_0 ),
        .\axi_rdata_reg[2] (\axi_rdata[2]_i_2_n_0 ),
        .\axi_rdata_reg[3] (\axi_rdata[3]_i_2_n_0 ),
        .\axi_rdata_reg[4] (\axi_rdata[4]_i_2_n_0 ),
        .\axi_rdata_reg[5] (\axi_rdata[5]_i_2_n_0 ),
        .\axi_rdata_reg[6] (\axi_rdata[6]_i_2_n_0 ),
        .\axi_rdata_reg[7] ({slv_reg5__0[7:4],slv_reg5}),
        .\axi_rdata_reg[7]_0 (slv_reg7[7:0]),
        .\axi_rdata_reg[7]_1 (\axi_rdata[7]_i_2_n_0 ),
        .\r_data_reg_next_reg[7]_0 (RDATA),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .sel0(sel0),
        .\w_data_reg_next_reg[31]_0 (slv_reg4),
        .\w_state_reg[1]_0 (\w_state_reg[1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_slave DUT_slave
       (.ARREADY(ARREADY),
        .ARVALID(ARVALID),
        .AWREADY_reg_0(AWREADY),
        .AWREADY_reg_1(AWREADY_reg),
        .AWVALID(AWVALID),
        .D(AWADDR),
        .Q(Q),
        .\RDATA_reg[7]_0 (RDATA),
        .RREADY(RREADY),
        .RVALID(RVALID),
        .RVALID_reg_0(RVALID_reg),
        .SR(DUT_slave_n_10),
        .WREADY(WREADY),
        .WREADY_reg_0(WREADY_reg),
        .\ar_addr_reg_next_reg[3]_0 (ARADDR),
        .\aw_state_reg[1]_0 (\aw_state_reg[1] ),
        .led(led),
        .\r_state_reg[1]_0 (\r_state_reg[1]_0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\w_strb_reg_next_reg[3]_0 (WVALID),
        .\w_strb_reg_next_reg[3]_1 (WSTRB),
        .\write_data_reg_next_reg[31]_0 (WDATA));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_reg_1),
        .Q(aw_en_reg_0),
        .S(DUT_slave_n_10));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(DUT_slave_n_10));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(DUT_slave_n_10));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(DUT_slave_n_10));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(DUT_slave_n_10));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(DUT_slave_n_10));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(DUT_slave_n_10));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(DUT_slave_n_10));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(aw_en_reg_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(DUT_slave_n_10));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s00_axi_bvalid),
        .R(DUT_slave_n_10));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2),
        .I2(sel0[1]),
        .I3(slv_reg1[0]),
        .I4(sel0[0]),
        .I5(slv_reg0),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(slv_reg3[10]),
        .I1(slv_reg2__0[10]),
        .I2(sel0[1]),
        .I3(slv_reg1[10]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[10]_i_3 
       (.I0(slv_reg7[10]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[10]),
        .I3(sel0[0]),
        .I4(slv_reg4[10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(slv_reg3[11]),
        .I1(slv_reg2__0[11]),
        .I2(sel0[1]),
        .I3(slv_reg1[11]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[11]_i_3 
       (.I0(slv_reg7[11]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[11]),
        .I3(sel0[0]),
        .I4(slv_reg4[11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(slv_reg3[12]),
        .I1(slv_reg2__0[12]),
        .I2(sel0[1]),
        .I3(slv_reg1[12]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[12]_i_3 
       (.I0(slv_reg7[12]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[12]),
        .I3(sel0[0]),
        .I4(slv_reg4[12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2__0[13]),
        .I2(sel0[1]),
        .I3(slv_reg1[13]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[13]_i_3 
       (.I0(slv_reg7[13]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[13]),
        .I3(sel0[0]),
        .I4(slv_reg4[13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(slv_reg3[14]),
        .I1(slv_reg2__0[14]),
        .I2(sel0[1]),
        .I3(slv_reg1[14]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[14]_i_3 
       (.I0(slv_reg7[14]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[14]),
        .I3(sel0[0]),
        .I4(slv_reg4[14]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2__0[15]),
        .I2(sel0[1]),
        .I3(slv_reg1[15]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[15]_i_3 
       (.I0(slv_reg7[15]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[15]),
        .I3(sel0[0]),
        .I4(slv_reg4[15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(slv_reg3[16]),
        .I1(slv_reg2__0[16]),
        .I2(sel0[1]),
        .I3(slv_reg1[16]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[16]_i_3 
       (.I0(slv_reg7[16]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[16]),
        .I3(sel0[0]),
        .I4(slv_reg4[16]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(slv_reg3[17]),
        .I1(slv_reg2__0[17]),
        .I2(sel0[1]),
        .I3(slv_reg1[17]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[17]_i_3 
       (.I0(slv_reg7[17]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[17]),
        .I3(sel0[0]),
        .I4(slv_reg4[17]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(slv_reg3[18]),
        .I1(slv_reg2__0[18]),
        .I2(sel0[1]),
        .I3(slv_reg1[18]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[18]_i_3 
       (.I0(slv_reg7[18]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[18]),
        .I3(sel0[0]),
        .I4(slv_reg4[18]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(slv_reg3[19]),
        .I1(slv_reg2__0[19]),
        .I2(sel0[1]),
        .I3(slv_reg1[19]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[19]_i_3 
       (.I0(slv_reg7[19]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[19]),
        .I3(sel0[0]),
        .I4(slv_reg4[19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(slv_reg3[1]),
        .I1(slv_reg2__0[1]),
        .I2(sel0[1]),
        .I3(slv_reg1[1]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(slv_reg3[20]),
        .I1(slv_reg2__0[20]),
        .I2(sel0[1]),
        .I3(slv_reg1[20]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[20]_i_3 
       (.I0(slv_reg7[20]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[20]),
        .I3(sel0[0]),
        .I4(slv_reg4[20]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(slv_reg3[21]),
        .I1(slv_reg2__0[21]),
        .I2(sel0[1]),
        .I3(slv_reg1[21]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[21]_i_3 
       (.I0(slv_reg7[21]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[21]),
        .I3(sel0[0]),
        .I4(slv_reg4[21]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(slv_reg3[22]),
        .I1(slv_reg2__0[22]),
        .I2(sel0[1]),
        .I3(slv_reg1[22]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[22]_i_3 
       (.I0(slv_reg7[22]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[22]),
        .I3(sel0[0]),
        .I4(slv_reg4[22]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(slv_reg3[23]),
        .I1(slv_reg2__0[23]),
        .I2(sel0[1]),
        .I3(slv_reg1[23]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[23]_i_3 
       (.I0(slv_reg7[23]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[23]),
        .I3(sel0[0]),
        .I4(slv_reg4[23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(slv_reg3[24]),
        .I1(slv_reg2__0[24]),
        .I2(sel0[1]),
        .I3(slv_reg1[24]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[24]_i_3 
       (.I0(slv_reg7[24]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[24]),
        .I3(sel0[0]),
        .I4(slv_reg4[24]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(slv_reg3[25]),
        .I1(slv_reg2__0[25]),
        .I2(sel0[1]),
        .I3(slv_reg1[25]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[25]_i_3 
       (.I0(slv_reg7[25]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[25]),
        .I3(sel0[0]),
        .I4(slv_reg4[25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(slv_reg3[26]),
        .I1(slv_reg2__0[26]),
        .I2(sel0[1]),
        .I3(slv_reg1[26]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[26]_i_3 
       (.I0(slv_reg7[26]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[26]),
        .I3(sel0[0]),
        .I4(slv_reg4[26]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(slv_reg3[27]),
        .I1(slv_reg2__0[27]),
        .I2(sel0[1]),
        .I3(slv_reg1[27]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[27]_i_3 
       (.I0(slv_reg7[27]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[27]),
        .I3(sel0[0]),
        .I4(slv_reg4[27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(slv_reg3[28]),
        .I1(slv_reg2__0[28]),
        .I2(sel0[1]),
        .I3(slv_reg1[28]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[28]_i_3 
       (.I0(slv_reg7[28]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[28]),
        .I3(sel0[0]),
        .I4(slv_reg4[28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(slv_reg3[29]),
        .I1(slv_reg2__0[29]),
        .I2(sel0[1]),
        .I3(slv_reg1[29]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[29]_i_3 
       (.I0(slv_reg7[29]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[29]),
        .I3(sel0[0]),
        .I4(slv_reg4[29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(slv_reg3[2]),
        .I1(slv_reg2__0[2]),
        .I2(sel0[1]),
        .I3(slv_reg1[2]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(slv_reg3[30]),
        .I1(slv_reg2__0[30]),
        .I2(sel0[1]),
        .I3(slv_reg1[30]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[30]_i_3 
       (.I0(slv_reg7[30]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[30]),
        .I3(sel0[0]),
        .I4(slv_reg4[30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg3[31]),
        .I1(slv_reg2__0[31]),
        .I2(sel0[1]),
        .I3(slv_reg1[31]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[31]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[31]_i_3 
       (.I0(slv_reg7[31]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[31]),
        .I3(sel0[0]),
        .I4(slv_reg4[31]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(slv_reg3[3]),
        .I1(slv_reg2__0[3]),
        .I2(sel0[1]),
        .I3(slv_reg1[3]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(slv_reg3[4]),
        .I1(slv_reg2__0[4]),
        .I2(sel0[1]),
        .I3(slv_reg1[4]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(slv_reg3[5]),
        .I1(slv_reg2__0[5]),
        .I2(sel0[1]),
        .I3(slv_reg1[5]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(slv_reg3[6]),
        .I1(slv_reg2__0[6]),
        .I2(sel0[1]),
        .I3(slv_reg1[6]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2__0[7]),
        .I2(sel0[1]),
        .I3(slv_reg1[7]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(slv_reg3[8]),
        .I1(slv_reg2__0[8]),
        .I2(sel0[1]),
        .I3(slv_reg1[8]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[8]_i_3 
       (.I0(slv_reg7[8]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[8]),
        .I3(sel0[0]),
        .I4(slv_reg4[8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(slv_reg3[9]),
        .I1(slv_reg2__0[9]),
        .I2(sel0[1]),
        .I3(slv_reg1[9]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[9]_i_3 
       (.I0(slv_reg7[9]),
        .I1(sel0[1]),
        .I2(slv_reg5__0[9]),
        .I3(sel0[0]),
        .I4(slv_reg4[9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(DUT_slave_n_10));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata[10]_i_3_n_0 ),
        .O(reg_data_out[10]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_3_n_0 ),
        .O(reg_data_out[11]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(\axi_rdata[12]_i_3_n_0 ),
        .O(reg_data_out[12]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(\axi_rdata[13]_i_3_n_0 ),
        .O(reg_data_out[13]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(\axi_rdata[14]_i_3_n_0 ),
        .O(reg_data_out[14]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(\axi_rdata[15]_i_3_n_0 ),
        .O(reg_data_out[15]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(\axi_rdata[16]_i_3_n_0 ),
        .O(reg_data_out[16]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(\axi_rdata[17]_i_3_n_0 ),
        .O(reg_data_out[17]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(\axi_rdata[18]_i_3_n_0 ),
        .O(reg_data_out[18]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(\axi_rdata[19]_i_3_n_0 ),
        .O(reg_data_out[19]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(DUT_slave_n_10));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(\axi_rdata[20]_i_3_n_0 ),
        .O(reg_data_out[20]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(\axi_rdata[21]_i_3_n_0 ),
        .O(reg_data_out[21]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(\axi_rdata[22]_i_3_n_0 ),
        .O(reg_data_out[22]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(\axi_rdata[23]_i_3_n_0 ),
        .O(reg_data_out[23]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(\axi_rdata[24]_i_3_n_0 ),
        .O(reg_data_out[24]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(\axi_rdata[25]_i_3_n_0 ),
        .O(reg_data_out[25]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(\axi_rdata[26]_i_3_n_0 ),
        .O(reg_data_out[26]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(\axi_rdata[27]_i_3_n_0 ),
        .O(reg_data_out[27]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_3_n_0 ),
        .O(reg_data_out[28]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(\axi_rdata[29]_i_3_n_0 ),
        .O(reg_data_out[29]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(DUT_slave_n_10));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(\axi_rdata[30]_i_3_n_0 ),
        .O(reg_data_out[30]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[31]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_3_n_0 ),
        .O(reg_data_out[31]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(DUT_slave_n_10));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(DUT_slave_n_10));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(DUT_slave_n_10));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(DUT_slave_n_10));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(DUT_slave_n_10));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata[8]_i_3_n_0 ),
        .O(reg_data_out[8]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(DUT_slave_n_10));
  MUXF7 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_data_out[9]),
        .S(sel0[2]));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_0),
        .Q(s00_axi_rvalid),
        .R(DUT_slave_n_10));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(aw_en_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(DUT_slave_n_10));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0__0[10]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0__0[11]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0__0[12]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0__0[13]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0__0[14]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0__0[15]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0__0[16]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0__0[17]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0__0[18]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0__0[19]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0__0[1]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0__0[20]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0__0[21]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0__0[22]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0__0[23]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0__0[24]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0__0[25]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0__0[26]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0__0[27]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0__0[28]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0__0[29]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0__0[2]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0__0[30]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0__0[31]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0__0[3]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0__0[4]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0__0[5]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0__0[6]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0__0[7]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0__0[8]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0__0[9]),
        .R(DUT_slave_n_10));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(DUT_slave_n_10));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2__0[10]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2__0[11]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2__0[12]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2__0[13]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2__0[14]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2__0[15]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2__0[16]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2__0[17]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2__0[18]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2__0[19]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2__0[1]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2__0[20]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2__0[21]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2__0[22]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2__0[23]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2__0[24]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2__0[25]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2__0[26]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2__0[27]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2__0[28]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2__0[29]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2__0[2]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2__0[30]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2__0[31]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2__0[3]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2__0[4]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2__0[5]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2__0[6]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2__0[7]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2__0[8]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2__0[9]),
        .R(DUT_slave_n_10));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(DUT_slave_n_10));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(DUT_slave_n_10));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5__0[10]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5__0[11]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5__0[12]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5__0[13]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5__0[14]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5__0[15]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5__0[16]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5__0[17]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5__0[18]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5__0[19]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5__0[20]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5__0[21]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5__0[22]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5__0[23]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5__0[24]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5__0[25]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5__0[26]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5__0[27]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5__0[28]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5__0[29]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5__0[30]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5__0[31]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5__0[4]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5__0[5]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5__0[6]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5__0[7]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5__0[8]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5__0[9]),
        .R(DUT_slave_n_10));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(DUT_slave_n_10));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(DUT_slave_n_10));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
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
