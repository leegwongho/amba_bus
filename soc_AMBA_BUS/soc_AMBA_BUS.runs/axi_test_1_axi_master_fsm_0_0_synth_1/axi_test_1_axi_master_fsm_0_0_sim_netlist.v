// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct  7 20:33:43 2024
// Host        : leegwongho running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axi_test_1_axi_master_fsm_0_0_sim_netlist.v
// Design      : axi_test_1_axi_master_fsm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_fsm
   (M_AWADDR,
    M_WDATA,
    M_WSTRB,
    M_ARADDR,
    M_BLEN,
    U_RDATA,
    M_AWVALID,
    M_WVALID,
    M_ARVALID,
    M_RREADY,
    M_ACLK,
    U_WVALID,
    S_AWREADY,
    S_WREADY,
    U_RVALID,
    S_RDATA,
    U_ARADDR,
    U_WDATA,
    U_AWADDR,
    U_BLEN,
    U_STRB,
    S_ARREADY,
    S_RVALID,
    M_ARESET_N);
  output [31:0]M_AWADDR;
  output [31:0]M_WDATA;
  output [3:0]M_WSTRB;
  output [31:0]M_ARADDR;
  output [3:0]M_BLEN;
  output [31:0]U_RDATA;
  output M_AWVALID;
  output M_WVALID;
  output M_ARVALID;
  output M_RREADY;
  input M_ACLK;
  input U_WVALID;
  input S_AWREADY;
  input S_WREADY;
  input U_RVALID;
  input [31:0]S_RDATA;
  input [31:0]U_ARADDR;
  input [31:0]U_WDATA;
  input [31:0]U_AWADDR;
  input [3:0]U_BLEN;
  input [3:0]U_STRB;
  input S_ARREADY;
  input S_RVALID;
  input M_ARESET_N;

  wire M_ACLK;
  wire [31:0]M_ARADDR;
  wire \M_ARADDR[31]_i_1_n_0 ;
  wire M_ARESET_N;
  wire M_ARVALID;
  wire M_ARVALID_i_1_n_0;
  wire M_ARVALID_i_2_n_0;
  wire [31:0]M_AWADDR;
  wire \M_AWADDR[31]_i_1_n_0 ;
  wire M_AWVALID;
  wire M_AWVALID_i_1_n_0;
  wire M_AWVALID_i_2_n_0;
  wire [3:0]M_BLEN;
  wire M_RREADY;
  wire M_RREADY_i_1_n_0;
  wire M_RREADY_i_2_n_0;
  wire [31:0]M_WDATA;
  wire [3:0]M_WSTRB;
  wire M_WVALID;
  wire M_WVALID_i_1_n_0;
  wire M_WVALID_i_2_n_0;
  wire S_ARREADY;
  wire S_AWREADY;
  wire [31:0]S_RDATA;
  wire S_RVALID;
  wire S_WREADY;
  wire [31:0]U_ARADDR;
  wire [31:0]U_AWADDR;
  wire [3:0]U_BLEN;
  wire [31:0]U_RDATA;
  wire \U_RDATA[31]_i_1_n_0 ;
  wire U_RVALID;
  wire [3:0]U_STRB;
  wire [31:0]U_WDATA;
  wire U_WVALID;
  wire [31:0]araddr_reg;
  wire [31:0]araddr_reg_next;
  wire \araddr_reg_next[0]_i_1_n_0 ;
  wire \araddr_reg_next[10]_i_1_n_0 ;
  wire \araddr_reg_next[11]_i_1_n_0 ;
  wire \araddr_reg_next[12]_i_1_n_0 ;
  wire \araddr_reg_next[13]_i_1_n_0 ;
  wire \araddr_reg_next[14]_i_1_n_0 ;
  wire \araddr_reg_next[15]_i_1_n_0 ;
  wire \araddr_reg_next[16]_i_1_n_0 ;
  wire \araddr_reg_next[17]_i_1_n_0 ;
  wire \araddr_reg_next[18]_i_1_n_0 ;
  wire \araddr_reg_next[19]_i_1_n_0 ;
  wire \araddr_reg_next[1]_i_1_n_0 ;
  wire \araddr_reg_next[20]_i_1_n_0 ;
  wire \araddr_reg_next[21]_i_1_n_0 ;
  wire \araddr_reg_next[22]_i_1_n_0 ;
  wire \araddr_reg_next[23]_i_1_n_0 ;
  wire \araddr_reg_next[24]_i_1_n_0 ;
  wire \araddr_reg_next[25]_i_1_n_0 ;
  wire \araddr_reg_next[26]_i_1_n_0 ;
  wire \araddr_reg_next[27]_i_1_n_0 ;
  wire \araddr_reg_next[28]_i_1_n_0 ;
  wire \araddr_reg_next[29]_i_1_n_0 ;
  wire \araddr_reg_next[2]_i_1_n_0 ;
  wire \araddr_reg_next[30]_i_1_n_0 ;
  wire \araddr_reg_next[31]_i_1_n_0 ;
  wire \araddr_reg_next[3]_i_1_n_0 ;
  wire \araddr_reg_next[4]_i_1_n_0 ;
  wire \araddr_reg_next[5]_i_1_n_0 ;
  wire \araddr_reg_next[6]_i_1_n_0 ;
  wire \araddr_reg_next[7]_i_1_n_0 ;
  wire \araddr_reg_next[8]_i_1_n_0 ;
  wire \araddr_reg_next[9]_i_1_n_0 ;
  wire [31:0]awaddr_reg;
  wire [31:0]awaddr_reg_next;
  wire \awaddr_reg_next[0]_i_1_n_0 ;
  wire \awaddr_reg_next[10]_i_1_n_0 ;
  wire \awaddr_reg_next[11]_i_1_n_0 ;
  wire \awaddr_reg_next[12]_i_1_n_0 ;
  wire \awaddr_reg_next[13]_i_1_n_0 ;
  wire \awaddr_reg_next[14]_i_1_n_0 ;
  wire \awaddr_reg_next[15]_i_1_n_0 ;
  wire \awaddr_reg_next[16]_i_1_n_0 ;
  wire \awaddr_reg_next[17]_i_1_n_0 ;
  wire \awaddr_reg_next[18]_i_1_n_0 ;
  wire \awaddr_reg_next[19]_i_1_n_0 ;
  wire \awaddr_reg_next[1]_i_1_n_0 ;
  wire \awaddr_reg_next[20]_i_1_n_0 ;
  wire \awaddr_reg_next[21]_i_1_n_0 ;
  wire \awaddr_reg_next[22]_i_1_n_0 ;
  wire \awaddr_reg_next[23]_i_1_n_0 ;
  wire \awaddr_reg_next[24]_i_1_n_0 ;
  wire \awaddr_reg_next[25]_i_1_n_0 ;
  wire \awaddr_reg_next[26]_i_1_n_0 ;
  wire \awaddr_reg_next[27]_i_1_n_0 ;
  wire \awaddr_reg_next[28]_i_1_n_0 ;
  wire \awaddr_reg_next[29]_i_1_n_0 ;
  wire \awaddr_reg_next[2]_i_1_n_0 ;
  wire \awaddr_reg_next[30]_i_1_n_0 ;
  wire \awaddr_reg_next[31]_i_1_n_0 ;
  wire \awaddr_reg_next[3]_i_1_n_0 ;
  wire \awaddr_reg_next[4]_i_1_n_0 ;
  wire \awaddr_reg_next[5]_i_1_n_0 ;
  wire \awaddr_reg_next[6]_i_1_n_0 ;
  wire \awaddr_reg_next[7]_i_1_n_0 ;
  wire \awaddr_reg_next[8]_i_1_n_0 ;
  wire \awaddr_reg_next[9]_i_1_n_0 ;
  wire [3:0]burst_lenth;
  wire [3:0]burst_lenth_next;
  wire \burst_lenth_next_reg_n_0_[0] ;
  wire \burst_lenth_next_reg_n_0_[1] ;
  wire \burst_lenth_next_reg_n_0_[2] ;
  wire \burst_lenth_next_reg_n_0_[3] ;
  wire [4:0]p_0_in;
  wire [31:0]read_data_reg;
  wire [31:0]read_data_reg_next;
  wire \read_data_reg_next[0]_i_1_n_0 ;
  wire \read_data_reg_next[10]_i_1_n_0 ;
  wire \read_data_reg_next[11]_i_1_n_0 ;
  wire \read_data_reg_next[12]_i_1_n_0 ;
  wire \read_data_reg_next[13]_i_1_n_0 ;
  wire \read_data_reg_next[14]_i_1_n_0 ;
  wire \read_data_reg_next[15]_i_1_n_0 ;
  wire \read_data_reg_next[16]_i_1_n_0 ;
  wire \read_data_reg_next[17]_i_1_n_0 ;
  wire \read_data_reg_next[18]_i_1_n_0 ;
  wire \read_data_reg_next[19]_i_1_n_0 ;
  wire \read_data_reg_next[1]_i_1_n_0 ;
  wire \read_data_reg_next[20]_i_1_n_0 ;
  wire \read_data_reg_next[21]_i_1_n_0 ;
  wire \read_data_reg_next[22]_i_1_n_0 ;
  wire \read_data_reg_next[23]_i_1_n_0 ;
  wire \read_data_reg_next[24]_i_1_n_0 ;
  wire \read_data_reg_next[25]_i_1_n_0 ;
  wire \read_data_reg_next[26]_i_1_n_0 ;
  wire \read_data_reg_next[27]_i_1_n_0 ;
  wire \read_data_reg_next[28]_i_1_n_0 ;
  wire \read_data_reg_next[29]_i_1_n_0 ;
  wire \read_data_reg_next[2]_i_1_n_0 ;
  wire \read_data_reg_next[30]_i_1_n_0 ;
  wire \read_data_reg_next[31]_i_1_n_0 ;
  wire \read_data_reg_next[3]_i_1_n_0 ;
  wire \read_data_reg_next[4]_i_1_n_0 ;
  wire \read_data_reg_next[5]_i_1_n_0 ;
  wire \read_data_reg_next[6]_i_1_n_0 ;
  wire \read_data_reg_next[7]_i_1_n_0 ;
  wire \read_data_reg_next[8]_i_1_n_0 ;
  wire \read_data_reg_next[9]_i_1_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire [4:0]\^state_next ;
  wire \state_next[0]_i_2_n_0 ;
  wire \state_next[0]_i_3_n_0 ;
  wire \state_next[1]_i_2_n_0 ;
  wire \state_next[1]_i_3_n_0 ;
  wire \state_next[2]_i_2_n_0 ;
  wire \state_next[2]_i_3_n_0 ;
  wire \state_next[2]_i_4_n_0 ;
  wire \state_next[3]_i_2_n_0 ;
  wire \state_next[4]_i_2_n_0 ;
  wire \state_next[4]_i_3_n_0 ;
  wire state_next_n_0;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire [3:0]strb_reg;
  wire [3:0]strb_reg_next;
  wire \strb_reg_next[3]_i_2_n_0 ;
  wire \strb_reg_next_reg_n_0_[0] ;
  wire \strb_reg_next_reg_n_0_[1] ;
  wire \strb_reg_next_reg_n_0_[2] ;
  wire \strb_reg_next_reg_n_0_[3] ;
  wire [31:0]write_data_reg;
  wire [31:0]write_data_reg_next;
  wire \write_data_reg_next[0]_i_1_n_0 ;
  wire \write_data_reg_next[10]_i_1_n_0 ;
  wire \write_data_reg_next[11]_i_1_n_0 ;
  wire \write_data_reg_next[12]_i_1_n_0 ;
  wire \write_data_reg_next[13]_i_1_n_0 ;
  wire \write_data_reg_next[14]_i_1_n_0 ;
  wire \write_data_reg_next[15]_i_1_n_0 ;
  wire \write_data_reg_next[16]_i_1_n_0 ;
  wire \write_data_reg_next[17]_i_1_n_0 ;
  wire \write_data_reg_next[18]_i_1_n_0 ;
  wire \write_data_reg_next[19]_i_1_n_0 ;
  wire \write_data_reg_next[1]_i_1_n_0 ;
  wire \write_data_reg_next[20]_i_1_n_0 ;
  wire \write_data_reg_next[21]_i_1_n_0 ;
  wire \write_data_reg_next[22]_i_1_n_0 ;
  wire \write_data_reg_next[23]_i_1_n_0 ;
  wire \write_data_reg_next[24]_i_1_n_0 ;
  wire \write_data_reg_next[25]_i_1_n_0 ;
  wire \write_data_reg_next[26]_i_1_n_0 ;
  wire \write_data_reg_next[27]_i_1_n_0 ;
  wire \write_data_reg_next[28]_i_1_n_0 ;
  wire \write_data_reg_next[29]_i_1_n_0 ;
  wire \write_data_reg_next[2]_i_1_n_0 ;
  wire \write_data_reg_next[30]_i_1_n_0 ;
  wire \write_data_reg_next[31]_i_1_n_0 ;
  wire \write_data_reg_next[3]_i_1_n_0 ;
  wire \write_data_reg_next[4]_i_1_n_0 ;
  wire \write_data_reg_next[5]_i_1_n_0 ;
  wire \write_data_reg_next[6]_i_1_n_0 ;
  wire \write_data_reg_next[7]_i_1_n_0 ;
  wire \write_data_reg_next[8]_i_1_n_0 ;
  wire \write_data_reg_next[9]_i_1_n_0 ;

  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \M_ARADDR[31]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(U_RVALID),
        .O(\M_ARADDR[31]_i_1_n_0 ));
  FDRE \M_ARADDR_reg[0] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[0]),
        .Q(M_ARADDR[0]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[10] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[10]),
        .Q(M_ARADDR[10]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[11] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[11]),
        .Q(M_ARADDR[11]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[12] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[12]),
        .Q(M_ARADDR[12]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[13] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[13]),
        .Q(M_ARADDR[13]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[14] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[14]),
        .Q(M_ARADDR[14]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[15] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[15]),
        .Q(M_ARADDR[15]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[16] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[16]),
        .Q(M_ARADDR[16]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[17] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[17]),
        .Q(M_ARADDR[17]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[18] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[18]),
        .Q(M_ARADDR[18]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[19] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[19]),
        .Q(M_ARADDR[19]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[1] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[1]),
        .Q(M_ARADDR[1]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[20] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[20]),
        .Q(M_ARADDR[20]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[21] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[21]),
        .Q(M_ARADDR[21]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[22] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[22]),
        .Q(M_ARADDR[22]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[23] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[23]),
        .Q(M_ARADDR[23]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[24] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[24]),
        .Q(M_ARADDR[24]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[25] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[25]),
        .Q(M_ARADDR[25]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[26] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[26]),
        .Q(M_ARADDR[26]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[27] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[27]),
        .Q(M_ARADDR[27]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[28] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[28]),
        .Q(M_ARADDR[28]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[29] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[29]),
        .Q(M_ARADDR[29]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[2] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[2]),
        .Q(M_ARADDR[2]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[30] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[30]),
        .Q(M_ARADDR[30]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[31] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[31]),
        .Q(M_ARADDR[31]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[3] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[3]),
        .Q(M_ARADDR[3]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[4] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[4]),
        .Q(M_ARADDR[4]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[5] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[5]),
        .Q(M_ARADDR[5]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[6] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[6]),
        .Q(M_ARADDR[6]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[7] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[7]),
        .Q(M_ARADDR[7]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[8] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[8]),
        .Q(M_ARADDR[8]),
        .R(1'b0));
  FDRE \M_ARADDR_reg[9] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(araddr_reg[9]),
        .Q(M_ARADDR[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF7FFF7F700AA0000)) 
    M_ARVALID_i_1
       (.I0(M_ARVALID_i_2_n_0),
        .I1(S_ARREADY),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(U_RVALID),
        .I5(M_ARVALID),
        .O(M_ARVALID_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00001110)) 
    M_ARVALID_i_2
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[4] ),
        .O(M_ARVALID_i_2_n_0));
  FDRE M_ARVALID_reg
       (.C(M_ACLK),
        .CE(1'b1),
        .D(M_ARVALID_i_1_n_0),
        .Q(M_ARVALID),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \M_AWADDR[31]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(U_WVALID),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\M_AWADDR[31]_i_1_n_0 ));
  FDRE \M_AWADDR_reg[0] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[0]),
        .Q(M_AWADDR[0]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[10] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[10]),
        .Q(M_AWADDR[10]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[11] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[11]),
        .Q(M_AWADDR[11]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[12] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[12]),
        .Q(M_AWADDR[12]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[13] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[13]),
        .Q(M_AWADDR[13]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[14] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[14]),
        .Q(M_AWADDR[14]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[15] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[15]),
        .Q(M_AWADDR[15]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[16] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[16]),
        .Q(M_AWADDR[16]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[17] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[17]),
        .Q(M_AWADDR[17]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[18] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[18]),
        .Q(M_AWADDR[18]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[19] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[19]),
        .Q(M_AWADDR[19]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[1] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[1]),
        .Q(M_AWADDR[1]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[20] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[20]),
        .Q(M_AWADDR[20]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[21] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[21]),
        .Q(M_AWADDR[21]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[22] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[22]),
        .Q(M_AWADDR[22]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[23] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[23]),
        .Q(M_AWADDR[23]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[24] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[24]),
        .Q(M_AWADDR[24]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[25] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[25]),
        .Q(M_AWADDR[25]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[26] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[26]),
        .Q(M_AWADDR[26]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[27] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[27]),
        .Q(M_AWADDR[27]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[28] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[28]),
        .Q(M_AWADDR[28]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[29] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[29]),
        .Q(M_AWADDR[29]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[2] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[2]),
        .Q(M_AWADDR[2]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[30] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[30]),
        .Q(M_AWADDR[30]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[31] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[31]),
        .Q(M_AWADDR[31]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[3] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[3]),
        .Q(M_AWADDR[3]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[4] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[4]),
        .Q(M_AWADDR[4]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[5] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[5]),
        .Q(M_AWADDR[5]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[6] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[6]),
        .Q(M_AWADDR[6]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[7] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[7]),
        .Q(M_AWADDR[7]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[8] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[8]),
        .Q(M_AWADDR[8]),
        .R(1'b0));
  FDRE \M_AWADDR_reg[9] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(awaddr_reg[9]),
        .Q(M_AWADDR[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF200000002)) 
    M_AWVALID_i_1
       (.I0(U_WVALID),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(M_AWVALID_i_2_n_0),
        .I5(M_AWVALID),
        .O(M_AWVALID_i_1_n_0));
  LUT5 #(
    .INIT(32'hFABFFFBF)) 
    M_AWVALID_i_2
       (.I0(\state_reg_n_0_[1] ),
        .I1(S_AWREADY),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(U_WVALID),
        .O(M_AWVALID_i_2_n_0));
  FDRE M_AWVALID_reg
       (.C(M_ACLK),
        .CE(1'b1),
        .D(M_AWVALID_i_1_n_0),
        .Q(M_AWVALID),
        .R(1'b0));
  FDRE \M_BLEN_reg[0] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(burst_lenth[0]),
        .Q(M_BLEN[0]),
        .R(1'b0));
  FDRE \M_BLEN_reg[1] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(burst_lenth[1]),
        .Q(M_BLEN[1]),
        .R(1'b0));
  FDRE \M_BLEN_reg[2] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(burst_lenth[2]),
        .Q(M_BLEN[2]),
        .R(1'b0));
  FDRE \M_BLEN_reg[3] 
       (.C(M_ACLK),
        .CE(\M_ARADDR[31]_i_1_n_0 ),
        .D(burst_lenth[3]),
        .Q(M_BLEN[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFFFFFFF00880000)) 
    M_RREADY_i_1
       (.I0(U_RVALID),
        .I1(\state_reg_n_0_[0] ),
        .I2(S_RVALID),
        .I3(\state_reg_n_0_[3] ),
        .I4(M_RREADY_i_2_n_0),
        .I5(M_RREADY),
        .O(M_RREADY_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    M_RREADY_i_2
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[4] ),
        .O(M_RREADY_i_2_n_0));
  FDRE M_RREADY_reg
       (.C(M_ACLK),
        .CE(1'b1),
        .D(M_RREADY_i_1_n_0),
        .Q(M_RREADY),
        .R(1'b0));
  FDRE \M_WDATA_reg[0] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[0]),
        .Q(M_WDATA[0]),
        .R(1'b0));
  FDRE \M_WDATA_reg[10] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[10]),
        .Q(M_WDATA[10]),
        .R(1'b0));
  FDRE \M_WDATA_reg[11] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[11]),
        .Q(M_WDATA[11]),
        .R(1'b0));
  FDRE \M_WDATA_reg[12] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[12]),
        .Q(M_WDATA[12]),
        .R(1'b0));
  FDRE \M_WDATA_reg[13] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[13]),
        .Q(M_WDATA[13]),
        .R(1'b0));
  FDRE \M_WDATA_reg[14] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[14]),
        .Q(M_WDATA[14]),
        .R(1'b0));
  FDRE \M_WDATA_reg[15] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[15]),
        .Q(M_WDATA[15]),
        .R(1'b0));
  FDRE \M_WDATA_reg[16] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[16]),
        .Q(M_WDATA[16]),
        .R(1'b0));
  FDRE \M_WDATA_reg[17] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[17]),
        .Q(M_WDATA[17]),
        .R(1'b0));
  FDRE \M_WDATA_reg[18] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[18]),
        .Q(M_WDATA[18]),
        .R(1'b0));
  FDRE \M_WDATA_reg[19] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[19]),
        .Q(M_WDATA[19]),
        .R(1'b0));
  FDRE \M_WDATA_reg[1] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[1]),
        .Q(M_WDATA[1]),
        .R(1'b0));
  FDRE \M_WDATA_reg[20] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[20]),
        .Q(M_WDATA[20]),
        .R(1'b0));
  FDRE \M_WDATA_reg[21] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[21]),
        .Q(M_WDATA[21]),
        .R(1'b0));
  FDRE \M_WDATA_reg[22] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[22]),
        .Q(M_WDATA[22]),
        .R(1'b0));
  FDRE \M_WDATA_reg[23] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[23]),
        .Q(M_WDATA[23]),
        .R(1'b0));
  FDRE \M_WDATA_reg[24] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[24]),
        .Q(M_WDATA[24]),
        .R(1'b0));
  FDRE \M_WDATA_reg[25] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[25]),
        .Q(M_WDATA[25]),
        .R(1'b0));
  FDRE \M_WDATA_reg[26] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[26]),
        .Q(M_WDATA[26]),
        .R(1'b0));
  FDRE \M_WDATA_reg[27] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[27]),
        .Q(M_WDATA[27]),
        .R(1'b0));
  FDRE \M_WDATA_reg[28] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[28]),
        .Q(M_WDATA[28]),
        .R(1'b0));
  FDRE \M_WDATA_reg[29] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[29]),
        .Q(M_WDATA[29]),
        .R(1'b0));
  FDRE \M_WDATA_reg[2] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[2]),
        .Q(M_WDATA[2]),
        .R(1'b0));
  FDRE \M_WDATA_reg[30] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[30]),
        .Q(M_WDATA[30]),
        .R(1'b0));
  FDRE \M_WDATA_reg[31] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[31]),
        .Q(M_WDATA[31]),
        .R(1'b0));
  FDRE \M_WDATA_reg[3] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[3]),
        .Q(M_WDATA[3]),
        .R(1'b0));
  FDRE \M_WDATA_reg[4] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[4]),
        .Q(M_WDATA[4]),
        .R(1'b0));
  FDRE \M_WDATA_reg[5] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[5]),
        .Q(M_WDATA[5]),
        .R(1'b0));
  FDRE \M_WDATA_reg[6] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[6]),
        .Q(M_WDATA[6]),
        .R(1'b0));
  FDRE \M_WDATA_reg[7] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[7]),
        .Q(M_WDATA[7]),
        .R(1'b0));
  FDRE \M_WDATA_reg[8] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[8]),
        .Q(M_WDATA[8]),
        .R(1'b0));
  FDRE \M_WDATA_reg[9] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(write_data_reg[9]),
        .Q(M_WDATA[9]),
        .R(1'b0));
  FDRE \M_WSTRB_reg[0] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(strb_reg[0]),
        .Q(M_WSTRB[0]),
        .R(1'b0));
  FDRE \M_WSTRB_reg[1] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(strb_reg[1]),
        .Q(M_WSTRB[1]),
        .R(1'b0));
  FDRE \M_WSTRB_reg[2] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(strb_reg[2]),
        .Q(M_WSTRB[2]),
        .R(1'b0));
  FDRE \M_WSTRB_reg[3] 
       (.C(M_ACLK),
        .CE(\M_AWADDR[31]_i_1_n_0 ),
        .D(strb_reg[3]),
        .Q(M_WSTRB[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF200000002)) 
    M_WVALID_i_1
       (.I0(U_WVALID),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(M_WVALID_i_2_n_0),
        .I5(M_WVALID),
        .O(M_WVALID_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFF53F)) 
    M_WVALID_i_2
       (.I0(S_WREADY),
        .I1(U_WVALID),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[3] ),
        .O(M_WVALID_i_2_n_0));
  FDRE M_WVALID_reg
       (.C(M_ACLK),
        .CE(1'b1),
        .D(M_WVALID_i_1_n_0),
        .Q(M_WVALID),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000010)) 
    \U_RDATA[31]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[4] ),
        .O(\U_RDATA[31]_i_1_n_0 ));
  FDRE \U_RDATA_reg[0] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[0]),
        .Q(U_RDATA[0]),
        .R(1'b0));
  FDRE \U_RDATA_reg[10] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[10]),
        .Q(U_RDATA[10]),
        .R(1'b0));
  FDRE \U_RDATA_reg[11] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[11]),
        .Q(U_RDATA[11]),
        .R(1'b0));
  FDRE \U_RDATA_reg[12] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[12]),
        .Q(U_RDATA[12]),
        .R(1'b0));
  FDRE \U_RDATA_reg[13] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[13]),
        .Q(U_RDATA[13]),
        .R(1'b0));
  FDRE \U_RDATA_reg[14] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[14]),
        .Q(U_RDATA[14]),
        .R(1'b0));
  FDRE \U_RDATA_reg[15] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[15]),
        .Q(U_RDATA[15]),
        .R(1'b0));
  FDRE \U_RDATA_reg[16] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[16]),
        .Q(U_RDATA[16]),
        .R(1'b0));
  FDRE \U_RDATA_reg[17] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[17]),
        .Q(U_RDATA[17]),
        .R(1'b0));
  FDRE \U_RDATA_reg[18] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[18]),
        .Q(U_RDATA[18]),
        .R(1'b0));
  FDRE \U_RDATA_reg[19] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[19]),
        .Q(U_RDATA[19]),
        .R(1'b0));
  FDRE \U_RDATA_reg[1] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[1]),
        .Q(U_RDATA[1]),
        .R(1'b0));
  FDRE \U_RDATA_reg[20] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[20]),
        .Q(U_RDATA[20]),
        .R(1'b0));
  FDRE \U_RDATA_reg[21] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[21]),
        .Q(U_RDATA[21]),
        .R(1'b0));
  FDRE \U_RDATA_reg[22] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[22]),
        .Q(U_RDATA[22]),
        .R(1'b0));
  FDRE \U_RDATA_reg[23] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[23]),
        .Q(U_RDATA[23]),
        .R(1'b0));
  FDRE \U_RDATA_reg[24] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[24]),
        .Q(U_RDATA[24]),
        .R(1'b0));
  FDRE \U_RDATA_reg[25] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[25]),
        .Q(U_RDATA[25]),
        .R(1'b0));
  FDRE \U_RDATA_reg[26] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[26]),
        .Q(U_RDATA[26]),
        .R(1'b0));
  FDRE \U_RDATA_reg[27] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[27]),
        .Q(U_RDATA[27]),
        .R(1'b0));
  FDRE \U_RDATA_reg[28] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[28]),
        .Q(U_RDATA[28]),
        .R(1'b0));
  FDRE \U_RDATA_reg[29] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[29]),
        .Q(U_RDATA[29]),
        .R(1'b0));
  FDRE \U_RDATA_reg[2] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[2]),
        .Q(U_RDATA[2]),
        .R(1'b0));
  FDRE \U_RDATA_reg[30] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[30]),
        .Q(U_RDATA[30]),
        .R(1'b0));
  FDRE \U_RDATA_reg[31] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[31]),
        .Q(U_RDATA[31]),
        .R(1'b0));
  FDRE \U_RDATA_reg[3] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[3]),
        .Q(U_RDATA[3]),
        .R(1'b0));
  FDRE \U_RDATA_reg[4] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[4]),
        .Q(U_RDATA[4]),
        .R(1'b0));
  FDRE \U_RDATA_reg[5] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[5]),
        .Q(U_RDATA[5]),
        .R(1'b0));
  FDRE \U_RDATA_reg[6] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[6]),
        .Q(U_RDATA[6]),
        .R(1'b0));
  FDRE \U_RDATA_reg[7] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[7]),
        .Q(U_RDATA[7]),
        .R(1'b0));
  FDRE \U_RDATA_reg[8] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[8]),
        .Q(U_RDATA[8]),
        .R(1'b0));
  FDRE \U_RDATA_reg[9] 
       (.C(M_ACLK),
        .CE(\U_RDATA[31]_i_1_n_0 ),
        .D(read_data_reg[9]),
        .Q(U_RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[0]_i_1 
       (.I0(U_ARADDR[0]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[0]),
        .O(\araddr_reg_next[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[10]_i_1 
       (.I0(U_ARADDR[10]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[10]),
        .O(\araddr_reg_next[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[11]_i_1 
       (.I0(U_ARADDR[11]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[11]),
        .O(\araddr_reg_next[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[12]_i_1 
       (.I0(U_ARADDR[12]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[12]),
        .O(\araddr_reg_next[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[13]_i_1 
       (.I0(U_ARADDR[13]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[13]),
        .O(\araddr_reg_next[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[14]_i_1 
       (.I0(U_ARADDR[14]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[14]),
        .O(\araddr_reg_next[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[15]_i_1 
       (.I0(U_ARADDR[15]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[15]),
        .O(\araddr_reg_next[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[16]_i_1 
       (.I0(U_ARADDR[16]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[16]),
        .O(\araddr_reg_next[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[17]_i_1 
       (.I0(U_ARADDR[17]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[17]),
        .O(\araddr_reg_next[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[18]_i_1 
       (.I0(U_ARADDR[18]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[18]),
        .O(\araddr_reg_next[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[19]_i_1 
       (.I0(U_ARADDR[19]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[19]),
        .O(\araddr_reg_next[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[1]_i_1 
       (.I0(U_ARADDR[1]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[1]),
        .O(\araddr_reg_next[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[20]_i_1 
       (.I0(U_ARADDR[20]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[20]),
        .O(\araddr_reg_next[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[21]_i_1 
       (.I0(U_ARADDR[21]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[21]),
        .O(\araddr_reg_next[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[22]_i_1 
       (.I0(U_ARADDR[22]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[22]),
        .O(\araddr_reg_next[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[23]_i_1 
       (.I0(U_ARADDR[23]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[23]),
        .O(\araddr_reg_next[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[24]_i_1 
       (.I0(U_ARADDR[24]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[24]),
        .O(\araddr_reg_next[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[25]_i_1 
       (.I0(U_ARADDR[25]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[25]),
        .O(\araddr_reg_next[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[26]_i_1 
       (.I0(U_ARADDR[26]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[26]),
        .O(\araddr_reg_next[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[27]_i_1 
       (.I0(U_ARADDR[27]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[27]),
        .O(\araddr_reg_next[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[28]_i_1 
       (.I0(U_ARADDR[28]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[28]),
        .O(\araddr_reg_next[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[29]_i_1 
       (.I0(U_ARADDR[29]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[29]),
        .O(\araddr_reg_next[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[2]_i_1 
       (.I0(U_ARADDR[2]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[2]),
        .O(\araddr_reg_next[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[30]_i_1 
       (.I0(U_ARADDR[30]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[30]),
        .O(\araddr_reg_next[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[31]_i_1 
       (.I0(U_ARADDR[31]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[31]),
        .O(\araddr_reg_next[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[3]_i_1 
       (.I0(U_ARADDR[3]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[3]),
        .O(\araddr_reg_next[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[4]_i_1 
       (.I0(U_ARADDR[4]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[4]),
        .O(\araddr_reg_next[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[5]_i_1 
       (.I0(U_ARADDR[5]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[5]),
        .O(\araddr_reg_next[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[6]_i_1 
       (.I0(U_ARADDR[6]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[6]),
        .O(\araddr_reg_next[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[7]_i_1 
       (.I0(U_ARADDR[7]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[7]),
        .O(\araddr_reg_next[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[8]_i_1 
       (.I0(U_ARADDR[8]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[8]),
        .O(\araddr_reg_next[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \araddr_reg_next[9]_i_1 
       (.I0(U_ARADDR[9]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(araddr_reg[9]),
        .O(\araddr_reg_next[9]_i_1_n_0 ));
  FDRE \araddr_reg_next_reg[0] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[0]_i_1_n_0 ),
        .Q(araddr_reg_next[0]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[10] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[10]_i_1_n_0 ),
        .Q(araddr_reg_next[10]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[11] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[11]_i_1_n_0 ),
        .Q(araddr_reg_next[11]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[12] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[12]_i_1_n_0 ),
        .Q(araddr_reg_next[12]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[13] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[13]_i_1_n_0 ),
        .Q(araddr_reg_next[13]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[14] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[14]_i_1_n_0 ),
        .Q(araddr_reg_next[14]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[15] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[15]_i_1_n_0 ),
        .Q(araddr_reg_next[15]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[16] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[16]_i_1_n_0 ),
        .Q(araddr_reg_next[16]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[17] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[17]_i_1_n_0 ),
        .Q(araddr_reg_next[17]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[18] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[18]_i_1_n_0 ),
        .Q(araddr_reg_next[18]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[19] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[19]_i_1_n_0 ),
        .Q(araddr_reg_next[19]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[1] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[1]_i_1_n_0 ),
        .Q(araddr_reg_next[1]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[20] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[20]_i_1_n_0 ),
        .Q(araddr_reg_next[20]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[21] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[21]_i_1_n_0 ),
        .Q(araddr_reg_next[21]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[22] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[22]_i_1_n_0 ),
        .Q(araddr_reg_next[22]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[23] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[23]_i_1_n_0 ),
        .Q(araddr_reg_next[23]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[24] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[24]_i_1_n_0 ),
        .Q(araddr_reg_next[24]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[25] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[25]_i_1_n_0 ),
        .Q(araddr_reg_next[25]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[26] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[26]_i_1_n_0 ),
        .Q(araddr_reg_next[26]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[27] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[27]_i_1_n_0 ),
        .Q(araddr_reg_next[27]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[28] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[28]_i_1_n_0 ),
        .Q(araddr_reg_next[28]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[29] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[29]_i_1_n_0 ),
        .Q(araddr_reg_next[29]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[2] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[2]_i_1_n_0 ),
        .Q(araddr_reg_next[2]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[30] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[30]_i_1_n_0 ),
        .Q(araddr_reg_next[30]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[31] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[31]_i_1_n_0 ),
        .Q(araddr_reg_next[31]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[3] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[3]_i_1_n_0 ),
        .Q(araddr_reg_next[3]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[4] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[4]_i_1_n_0 ),
        .Q(araddr_reg_next[4]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[5] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[5]_i_1_n_0 ),
        .Q(araddr_reg_next[5]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[6] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[6]_i_1_n_0 ),
        .Q(araddr_reg_next[6]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[7] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[7]_i_1_n_0 ),
        .Q(araddr_reg_next[7]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[8] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[8]_i_1_n_0 ),
        .Q(araddr_reg_next[8]),
        .R(1'b0));
  FDRE \araddr_reg_next_reg[9] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\araddr_reg_next[9]_i_1_n_0 ),
        .Q(araddr_reg_next[9]),
        .R(1'b0));
  FDRE \araddr_reg_reg[0] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[0]),
        .Q(araddr_reg[0]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[10] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[10]),
        .Q(araddr_reg[10]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[11] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[11]),
        .Q(araddr_reg[11]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[12] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[12]),
        .Q(araddr_reg[12]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[13] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[13]),
        .Q(araddr_reg[13]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[14] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[14]),
        .Q(araddr_reg[14]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[15] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[15]),
        .Q(araddr_reg[15]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[16] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[16]),
        .Q(araddr_reg[16]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[17] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[17]),
        .Q(araddr_reg[17]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[18] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[18]),
        .Q(araddr_reg[18]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[19] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[19]),
        .Q(araddr_reg[19]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[1] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[1]),
        .Q(araddr_reg[1]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[20] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[20]),
        .Q(araddr_reg[20]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[21] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[21]),
        .Q(araddr_reg[21]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[22] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[22]),
        .Q(araddr_reg[22]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[23] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[23]),
        .Q(araddr_reg[23]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[24] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[24]),
        .Q(araddr_reg[24]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[25] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[25]),
        .Q(araddr_reg[25]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[26] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[26]),
        .Q(araddr_reg[26]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[27] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[27]),
        .Q(araddr_reg[27]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[28] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[28]),
        .Q(araddr_reg[28]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[29] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[29]),
        .Q(araddr_reg[29]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[2] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[2]),
        .Q(araddr_reg[2]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[30] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[30]),
        .Q(araddr_reg[30]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[31] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[31]),
        .Q(araddr_reg[31]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[3] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[3]),
        .Q(araddr_reg[3]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[4] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[4]),
        .Q(araddr_reg[4]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[5] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[5]),
        .Q(araddr_reg[5]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[6] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[6]),
        .Q(araddr_reg[6]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[7] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[7]),
        .Q(araddr_reg[7]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[8] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[8]),
        .Q(araddr_reg[8]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \araddr_reg_reg[9] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(araddr_reg_next[9]),
        .Q(araddr_reg[9]),
        .R(\state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[0]_i_1 
       (.I0(U_AWADDR[0]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[0]),
        .O(\awaddr_reg_next[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[10]_i_1 
       (.I0(U_AWADDR[10]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[10]),
        .O(\awaddr_reg_next[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[11]_i_1 
       (.I0(U_AWADDR[11]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[11]),
        .O(\awaddr_reg_next[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[12]_i_1 
       (.I0(U_AWADDR[12]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[12]),
        .O(\awaddr_reg_next[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[13]_i_1 
       (.I0(U_AWADDR[13]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[13]),
        .O(\awaddr_reg_next[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[14]_i_1 
       (.I0(U_AWADDR[14]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[14]),
        .O(\awaddr_reg_next[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[15]_i_1 
       (.I0(U_AWADDR[15]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[15]),
        .O(\awaddr_reg_next[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[16]_i_1 
       (.I0(U_AWADDR[16]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[16]),
        .O(\awaddr_reg_next[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[17]_i_1 
       (.I0(U_AWADDR[17]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[17]),
        .O(\awaddr_reg_next[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[18]_i_1 
       (.I0(U_AWADDR[18]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[18]),
        .O(\awaddr_reg_next[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[19]_i_1 
       (.I0(U_AWADDR[19]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[19]),
        .O(\awaddr_reg_next[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[1]_i_1 
       (.I0(U_AWADDR[1]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[1]),
        .O(\awaddr_reg_next[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[20]_i_1 
       (.I0(U_AWADDR[20]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[20]),
        .O(\awaddr_reg_next[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[21]_i_1 
       (.I0(U_AWADDR[21]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[21]),
        .O(\awaddr_reg_next[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[22]_i_1 
       (.I0(U_AWADDR[22]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[22]),
        .O(\awaddr_reg_next[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[23]_i_1 
       (.I0(U_AWADDR[23]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[23]),
        .O(\awaddr_reg_next[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[24]_i_1 
       (.I0(U_AWADDR[24]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[24]),
        .O(\awaddr_reg_next[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[25]_i_1 
       (.I0(U_AWADDR[25]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[25]),
        .O(\awaddr_reg_next[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[26]_i_1 
       (.I0(U_AWADDR[26]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[26]),
        .O(\awaddr_reg_next[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[27]_i_1 
       (.I0(U_AWADDR[27]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[27]),
        .O(\awaddr_reg_next[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[28]_i_1 
       (.I0(U_AWADDR[28]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[28]),
        .O(\awaddr_reg_next[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[29]_i_1 
       (.I0(U_AWADDR[29]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[29]),
        .O(\awaddr_reg_next[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[2]_i_1 
       (.I0(U_AWADDR[2]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[2]),
        .O(\awaddr_reg_next[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[30]_i_1 
       (.I0(U_AWADDR[30]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[30]),
        .O(\awaddr_reg_next[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[31]_i_1 
       (.I0(U_AWADDR[31]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[31]),
        .O(\awaddr_reg_next[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[3]_i_1 
       (.I0(U_AWADDR[3]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[3]),
        .O(\awaddr_reg_next[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[4]_i_1 
       (.I0(U_AWADDR[4]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[4]),
        .O(\awaddr_reg_next[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[5]_i_1 
       (.I0(U_AWADDR[5]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[5]),
        .O(\awaddr_reg_next[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[6]_i_1 
       (.I0(U_AWADDR[6]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[6]),
        .O(\awaddr_reg_next[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[7]_i_1 
       (.I0(U_AWADDR[7]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[7]),
        .O(\awaddr_reg_next[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[8]_i_1 
       (.I0(U_AWADDR[8]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[8]),
        .O(\awaddr_reg_next[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \awaddr_reg_next[9]_i_1 
       (.I0(U_AWADDR[9]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(awaddr_reg[9]),
        .O(\awaddr_reg_next[9]_i_1_n_0 ));
  FDRE \awaddr_reg_next_reg[0] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[0]_i_1_n_0 ),
        .Q(awaddr_reg_next[0]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[10] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[10]_i_1_n_0 ),
        .Q(awaddr_reg_next[10]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[11] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[11]_i_1_n_0 ),
        .Q(awaddr_reg_next[11]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[12] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[12]_i_1_n_0 ),
        .Q(awaddr_reg_next[12]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[13] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[13]_i_1_n_0 ),
        .Q(awaddr_reg_next[13]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[14] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[14]_i_1_n_0 ),
        .Q(awaddr_reg_next[14]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[15] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[15]_i_1_n_0 ),
        .Q(awaddr_reg_next[15]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[16] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[16]_i_1_n_0 ),
        .Q(awaddr_reg_next[16]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[17] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[17]_i_1_n_0 ),
        .Q(awaddr_reg_next[17]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[18] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[18]_i_1_n_0 ),
        .Q(awaddr_reg_next[18]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[19] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[19]_i_1_n_0 ),
        .Q(awaddr_reg_next[19]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[1] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[1]_i_1_n_0 ),
        .Q(awaddr_reg_next[1]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[20] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[20]_i_1_n_0 ),
        .Q(awaddr_reg_next[20]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[21] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[21]_i_1_n_0 ),
        .Q(awaddr_reg_next[21]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[22] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[22]_i_1_n_0 ),
        .Q(awaddr_reg_next[22]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[23] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[23]_i_1_n_0 ),
        .Q(awaddr_reg_next[23]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[24] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[24]_i_1_n_0 ),
        .Q(awaddr_reg_next[24]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[25] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[25]_i_1_n_0 ),
        .Q(awaddr_reg_next[25]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[26] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[26]_i_1_n_0 ),
        .Q(awaddr_reg_next[26]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[27] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[27]_i_1_n_0 ),
        .Q(awaddr_reg_next[27]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[28] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[28]_i_1_n_0 ),
        .Q(awaddr_reg_next[28]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[29] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[29]_i_1_n_0 ),
        .Q(awaddr_reg_next[29]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[2] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[2]_i_1_n_0 ),
        .Q(awaddr_reg_next[2]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[30] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[30]_i_1_n_0 ),
        .Q(awaddr_reg_next[30]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[31] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[31]_i_1_n_0 ),
        .Q(awaddr_reg_next[31]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[3] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[3]_i_1_n_0 ),
        .Q(awaddr_reg_next[3]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[4] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[4]_i_1_n_0 ),
        .Q(awaddr_reg_next[4]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[5] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[5]_i_1_n_0 ),
        .Q(awaddr_reg_next[5]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[6] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[6]_i_1_n_0 ),
        .Q(awaddr_reg_next[6]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[7] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[7]_i_1_n_0 ),
        .Q(awaddr_reg_next[7]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[8] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[8]_i_1_n_0 ),
        .Q(awaddr_reg_next[8]),
        .R(1'b0));
  FDRE \awaddr_reg_next_reg[9] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\awaddr_reg_next[9]_i_1_n_0 ),
        .Q(awaddr_reg_next[9]),
        .R(1'b0));
  FDRE \awaddr_reg_reg[0] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[0]),
        .Q(awaddr_reg[0]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[10] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[10]),
        .Q(awaddr_reg[10]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[11] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[11]),
        .Q(awaddr_reg[11]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[12] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[12]),
        .Q(awaddr_reg[12]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[13] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[13]),
        .Q(awaddr_reg[13]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[14] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[14]),
        .Q(awaddr_reg[14]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[15] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[15]),
        .Q(awaddr_reg[15]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[16] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[16]),
        .Q(awaddr_reg[16]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[17] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[17]),
        .Q(awaddr_reg[17]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[18] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[18]),
        .Q(awaddr_reg[18]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[19] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[19]),
        .Q(awaddr_reg[19]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[1] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[1]),
        .Q(awaddr_reg[1]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[20] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[20]),
        .Q(awaddr_reg[20]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[21] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[21]),
        .Q(awaddr_reg[21]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[22] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[22]),
        .Q(awaddr_reg[22]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[23] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[23]),
        .Q(awaddr_reg[23]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[24] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[24]),
        .Q(awaddr_reg[24]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[25] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[25]),
        .Q(awaddr_reg[25]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[26] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[26]),
        .Q(awaddr_reg[26]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[27] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[27]),
        .Q(awaddr_reg[27]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[28] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[28]),
        .Q(awaddr_reg[28]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[29] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[29]),
        .Q(awaddr_reg[29]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[2] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[2]),
        .Q(awaddr_reg[2]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[30] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[30]),
        .Q(awaddr_reg[30]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[31] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[31]),
        .Q(awaddr_reg[31]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[3] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[3]),
        .Q(awaddr_reg[3]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[4] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[4]),
        .Q(awaddr_reg[4]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[5] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[5]),
        .Q(awaddr_reg[5]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[6] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[6]),
        .Q(awaddr_reg[6]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[7] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[7]),
        .Q(awaddr_reg[7]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[8] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[8]),
        .Q(awaddr_reg[8]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[9] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(awaddr_reg_next[9]),
        .Q(awaddr_reg[9]),
        .R(\state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burst_lenth_next[0]_i_1 
       (.I0(U_BLEN[0]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(burst_lenth[0]),
        .O(burst_lenth_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burst_lenth_next[1]_i_1 
       (.I0(U_BLEN[1]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(burst_lenth[1]),
        .O(burst_lenth_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burst_lenth_next[2]_i_1 
       (.I0(U_BLEN[2]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(burst_lenth[2]),
        .O(burst_lenth_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burst_lenth_next[3]_i_1 
       (.I0(U_BLEN[3]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(burst_lenth[3]),
        .O(burst_lenth_next[3]));
  FDRE \burst_lenth_next_reg[0] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(burst_lenth_next[0]),
        .Q(\burst_lenth_next_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \burst_lenth_next_reg[1] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(burst_lenth_next[1]),
        .Q(\burst_lenth_next_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \burst_lenth_next_reg[2] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(burst_lenth_next[2]),
        .Q(\burst_lenth_next_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \burst_lenth_next_reg[3] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(burst_lenth_next[3]),
        .Q(\burst_lenth_next_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \burst_lenth_reg[0] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\burst_lenth_next_reg_n_0_[0] ),
        .Q(burst_lenth[0]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \burst_lenth_reg[1] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\burst_lenth_next_reg_n_0_[1] ),
        .Q(burst_lenth[1]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \burst_lenth_reg[2] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\burst_lenth_next_reg_n_0_[2] ),
        .Q(burst_lenth[2]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \burst_lenth_reg[3] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\burst_lenth_next_reg_n_0_[3] ),
        .Q(burst_lenth[3]),
        .R(\state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[0]_i_1 
       (.I0(S_RDATA[0]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[0]),
        .O(\read_data_reg_next[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[10]_i_1 
       (.I0(S_RDATA[10]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[10]),
        .O(\read_data_reg_next[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[11]_i_1 
       (.I0(S_RDATA[11]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[11]),
        .O(\read_data_reg_next[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[12]_i_1 
       (.I0(S_RDATA[12]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[12]),
        .O(\read_data_reg_next[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[13]_i_1 
       (.I0(S_RDATA[13]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[13]),
        .O(\read_data_reg_next[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[14]_i_1 
       (.I0(S_RDATA[14]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[14]),
        .O(\read_data_reg_next[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[15]_i_1 
       (.I0(S_RDATA[15]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[15]),
        .O(\read_data_reg_next[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[16]_i_1 
       (.I0(S_RDATA[16]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[16]),
        .O(\read_data_reg_next[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[17]_i_1 
       (.I0(S_RDATA[17]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[17]),
        .O(\read_data_reg_next[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[18]_i_1 
       (.I0(S_RDATA[18]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[18]),
        .O(\read_data_reg_next[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[19]_i_1 
       (.I0(S_RDATA[19]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[19]),
        .O(\read_data_reg_next[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[1]_i_1 
       (.I0(S_RDATA[1]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[1]),
        .O(\read_data_reg_next[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[20]_i_1 
       (.I0(S_RDATA[20]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[20]),
        .O(\read_data_reg_next[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[21]_i_1 
       (.I0(S_RDATA[21]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[21]),
        .O(\read_data_reg_next[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[22]_i_1 
       (.I0(S_RDATA[22]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[22]),
        .O(\read_data_reg_next[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[23]_i_1 
       (.I0(S_RDATA[23]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[23]),
        .O(\read_data_reg_next[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[24]_i_1 
       (.I0(S_RDATA[24]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[24]),
        .O(\read_data_reg_next[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[25]_i_1 
       (.I0(S_RDATA[25]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[25]),
        .O(\read_data_reg_next[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[26]_i_1 
       (.I0(S_RDATA[26]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[26]),
        .O(\read_data_reg_next[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[27]_i_1 
       (.I0(S_RDATA[27]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[27]),
        .O(\read_data_reg_next[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[28]_i_1 
       (.I0(S_RDATA[28]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[28]),
        .O(\read_data_reg_next[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[29]_i_1 
       (.I0(S_RDATA[29]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[29]),
        .O(\read_data_reg_next[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[2]_i_1 
       (.I0(S_RDATA[2]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[2]),
        .O(\read_data_reg_next[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[30]_i_1 
       (.I0(S_RDATA[30]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[30]),
        .O(\read_data_reg_next[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[31]_i_1 
       (.I0(S_RDATA[31]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[31]),
        .O(\read_data_reg_next[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[3]_i_1 
       (.I0(S_RDATA[3]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[3]),
        .O(\read_data_reg_next[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[4]_i_1 
       (.I0(S_RDATA[4]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[4]),
        .O(\read_data_reg_next[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[5]_i_1 
       (.I0(S_RDATA[5]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[5]),
        .O(\read_data_reg_next[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[6]_i_1 
       (.I0(S_RDATA[6]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[6]),
        .O(\read_data_reg_next[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[7]_i_1 
       (.I0(S_RDATA[7]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[7]),
        .O(\read_data_reg_next[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[8]_i_1 
       (.I0(S_RDATA[8]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[8]),
        .O(\read_data_reg_next[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_reg_next[9]_i_1 
       (.I0(S_RDATA[9]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(read_data_reg[9]),
        .O(\read_data_reg_next[9]_i_1_n_0 ));
  FDRE \read_data_reg_next_reg[0] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[0]_i_1_n_0 ),
        .Q(read_data_reg_next[0]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[10] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[10]_i_1_n_0 ),
        .Q(read_data_reg_next[10]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[11] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[11]_i_1_n_0 ),
        .Q(read_data_reg_next[11]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[12] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[12]_i_1_n_0 ),
        .Q(read_data_reg_next[12]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[13] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[13]_i_1_n_0 ),
        .Q(read_data_reg_next[13]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[14] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[14]_i_1_n_0 ),
        .Q(read_data_reg_next[14]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[15] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[15]_i_1_n_0 ),
        .Q(read_data_reg_next[15]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[16] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[16]_i_1_n_0 ),
        .Q(read_data_reg_next[16]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[17] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[17]_i_1_n_0 ),
        .Q(read_data_reg_next[17]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[18] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[18]_i_1_n_0 ),
        .Q(read_data_reg_next[18]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[19] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[19]_i_1_n_0 ),
        .Q(read_data_reg_next[19]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[1] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[1]_i_1_n_0 ),
        .Q(read_data_reg_next[1]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[20] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[20]_i_1_n_0 ),
        .Q(read_data_reg_next[20]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[21] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[21]_i_1_n_0 ),
        .Q(read_data_reg_next[21]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[22] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[22]_i_1_n_0 ),
        .Q(read_data_reg_next[22]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[23] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[23]_i_1_n_0 ),
        .Q(read_data_reg_next[23]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[24] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[24]_i_1_n_0 ),
        .Q(read_data_reg_next[24]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[25] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[25]_i_1_n_0 ),
        .Q(read_data_reg_next[25]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[26] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[26]_i_1_n_0 ),
        .Q(read_data_reg_next[26]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[27] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[27]_i_1_n_0 ),
        .Q(read_data_reg_next[27]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[28] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[28]_i_1_n_0 ),
        .Q(read_data_reg_next[28]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[29] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[29]_i_1_n_0 ),
        .Q(read_data_reg_next[29]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[2] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[2]_i_1_n_0 ),
        .Q(read_data_reg_next[2]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[30] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[30]_i_1_n_0 ),
        .Q(read_data_reg_next[30]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[31] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[31]_i_1_n_0 ),
        .Q(read_data_reg_next[31]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[3] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[3]_i_1_n_0 ),
        .Q(read_data_reg_next[3]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[4] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[4]_i_1_n_0 ),
        .Q(read_data_reg_next[4]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[5] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[5]_i_1_n_0 ),
        .Q(read_data_reg_next[5]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[6] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[6]_i_1_n_0 ),
        .Q(read_data_reg_next[6]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[7] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[7]_i_1_n_0 ),
        .Q(read_data_reg_next[7]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[8] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[8]_i_1_n_0 ),
        .Q(read_data_reg_next[8]),
        .R(1'b0));
  FDRE \read_data_reg_next_reg[9] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\read_data_reg_next[9]_i_1_n_0 ),
        .Q(read_data_reg_next[9]),
        .R(1'b0));
  FDRE \read_data_reg_reg[0] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[0]),
        .Q(read_data_reg[0]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[10] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[10]),
        .Q(read_data_reg[10]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[11] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[11]),
        .Q(read_data_reg[11]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[12] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[12]),
        .Q(read_data_reg[12]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[13] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[13]),
        .Q(read_data_reg[13]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[14] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[14]),
        .Q(read_data_reg[14]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[15] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[15]),
        .Q(read_data_reg[15]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[16] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[16]),
        .Q(read_data_reg[16]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[17] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[17]),
        .Q(read_data_reg[17]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[18] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[18]),
        .Q(read_data_reg[18]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[19] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[19]),
        .Q(read_data_reg[19]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[1] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[1]),
        .Q(read_data_reg[1]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[20] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[20]),
        .Q(read_data_reg[20]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[21] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[21]),
        .Q(read_data_reg[21]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[22] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[22]),
        .Q(read_data_reg[22]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[23] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[23]),
        .Q(read_data_reg[23]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[24] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[24]),
        .Q(read_data_reg[24]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[25] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[25]),
        .Q(read_data_reg[25]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[26] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[26]),
        .Q(read_data_reg[26]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[27] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[27]),
        .Q(read_data_reg[27]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[28] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[28]),
        .Q(read_data_reg[28]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[29] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[29]),
        .Q(read_data_reg[29]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[2] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[2]),
        .Q(read_data_reg[2]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[30] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[30]),
        .Q(read_data_reg[30]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[31] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[31]),
        .Q(read_data_reg[31]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[3] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[3]),
        .Q(read_data_reg[3]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[4] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[4]),
        .Q(read_data_reg[4]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[5] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[5]),
        .Q(read_data_reg[5]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[6] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[6]),
        .Q(read_data_reg[6]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[7] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[7]),
        .Q(read_data_reg[7]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[8] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[8]),
        .Q(read_data_reg[8]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \read_data_reg_reg[9] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(read_data_reg_next[9]),
        .Q(read_data_reg[9]),
        .R(\state[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[4]_i_1 
       (.I0(M_ARESET_N),
        .O(\state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    state_next
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .O(state_next_n_0));
  LUT6 #(
    .INIT(64'hCFCF4040CFFF4040)) 
    \state_next[0]_i_1 
       (.I0(\state_next[0]_i_2_n_0 ),
        .I1(\state_next[0]_i_3_n_0 ),
        .I2(state_next_n_0),
        .I3(U_WVALID),
        .I4(\state_reg_n_0_[0] ),
        .I5(U_RVALID),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0777)) 
    \state_next[0]_i_2 
       (.I0(S_RVALID),
        .I1(\state_reg_n_0_[3] ),
        .I2(S_WREADY),
        .I3(\state_reg_n_0_[4] ),
        .O(\state_next[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF44F4)) 
    \state_next[0]_i_3 
       (.I0(S_AWREADY),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(S_ARREADY),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\state_next[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDFDF0F00FFFF0000)) 
    \state_next[1]_i_1 
       (.I0(S_ARREADY),
        .I1(\state_next[1]_i_2_n_0 ),
        .I2(\state_next[1]_i_3_n_0 ),
        .I3(U_RVALID),
        .I4(\state_reg_n_0_[1] ),
        .I5(state_next_n_0),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \state_next[1]_i_2 
       (.I0(S_RVALID),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(S_AWREADY),
        .I4(\state_reg_n_0_[4] ),
        .I5(S_WREADY),
        .O(\state_next[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state_next[1]_i_3 
       (.I0(U_WVALID),
        .I1(\state_reg_n_0_[0] ),
        .O(\state_next[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDF0000)) 
    \state_next[2]_i_1 
       (.I0(state_next_n_0),
        .I1(\state_next[2]_i_2_n_0 ),
        .I2(S_AWREADY),
        .I3(\state_next[2]_i_3_n_0 ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_next[2]_i_4_n_0 ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state_next[2]_i_2 
       (.I0(\state_reg_n_0_[4] ),
        .I1(S_WREADY),
        .O(\state_next[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \state_next[2]_i_3 
       (.I0(S_ARREADY),
        .I1(\state_reg_n_0_[1] ),
        .I2(S_RVALID),
        .I3(\state_reg_n_0_[3] ),
        .O(\state_next[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \state_next[2]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(U_WVALID),
        .I2(state_next_n_0),
        .I3(U_RVALID),
        .I4(\state_reg_n_0_[2] ),
        .O(\state_next[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F0F0F800F0F0)) 
    \state_next[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(S_ARREADY),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_next[3]_i_2_n_0 ),
        .I4(state_next_n_0),
        .I5(\state_next[4]_i_2_n_0 ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF22F2FFFF)) 
    \state_next[3]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(S_AWREADY),
        .I2(\state_reg_n_0_[4] ),
        .I3(S_WREADY),
        .I4(S_RVALID),
        .I5(\state_reg_n_0_[1] ),
        .O(\state_next[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F800F0F0F0F0)) 
    \state_next[4]_i_1 
       (.I0(S_AWREADY),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_next[4]_i_2_n_0 ),
        .I4(\state_next[4]_i_3_n_0 ),
        .I5(state_next_n_0),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \state_next[4]_i_2 
       (.I0(U_RVALID),
        .I1(\state_reg_n_0_[0] ),
        .I2(U_WVALID),
        .O(\state_next[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22F2FFFF)) 
    \state_next[4]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(S_RVALID),
        .I2(\state_reg_n_0_[1] ),
        .I3(S_ARREADY),
        .I4(S_WREADY),
        .I5(\state_reg_n_0_[2] ),
        .O(\state_next[4]_i_3_n_0 ));
  FDRE \state_next_reg[0] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\^state_next [0]),
        .R(1'b0));
  FDRE \state_next_reg[1] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\^state_next [1]),
        .R(1'b0));
  FDRE \state_next_reg[2] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\^state_next [2]),
        .R(1'b0));
  FDRE \state_next_reg[3] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\^state_next [3]),
        .R(1'b0));
  FDRE \state_next_reg[4] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\^state_next [4]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_AWADDR:000000100,STATE_ARADDR:000000010,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,IDLE:000000001" *) 
  FDSE \state_reg[0] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\^state_next [0]),
        .Q(\state_reg_n_0_[0] ),
        .S(\state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_AWADDR:000000100,STATE_ARADDR:000000010,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,IDLE:000000001" *) 
  FDRE \state_reg[1] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\^state_next [1]),
        .Q(\state_reg_n_0_[1] ),
        .R(\state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_AWADDR:000000100,STATE_ARADDR:000000010,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,IDLE:000000001" *) 
  FDRE \state_reg[2] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\^state_next [2]),
        .Q(\state_reg_n_0_[2] ),
        .R(\state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_AWADDR:000000100,STATE_ARADDR:000000010,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,IDLE:000000001" *) 
  FDRE \state_reg[3] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\^state_next [3]),
        .Q(\state_reg_n_0_[3] ),
        .R(\state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_AWADDR:000000100,STATE_ARADDR:000000010,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,IDLE:000000001" *) 
  FDRE \state_reg[4] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\^state_next [4]),
        .Q(\state_reg_n_0_[4] ),
        .R(\state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \strb_reg_next[0]_i_1 
       (.I0(U_STRB[0]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(strb_reg[0]),
        .O(strb_reg_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \strb_reg_next[1]_i_1 
       (.I0(U_STRB[1]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(strb_reg[1]),
        .O(strb_reg_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \strb_reg_next[2]_i_1 
       (.I0(U_STRB[2]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(strb_reg[2]),
        .O(strb_reg_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \strb_reg_next[3]_i_1 
       (.I0(U_STRB[3]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(strb_reg[3]),
        .O(strb_reg_next[3]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \strb_reg_next[3]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .O(\strb_reg_next[3]_i_2_n_0 ));
  FDRE \strb_reg_next_reg[0] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(strb_reg_next[0]),
        .Q(\strb_reg_next_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \strb_reg_next_reg[1] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(strb_reg_next[1]),
        .Q(\strb_reg_next_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \strb_reg_next_reg[2] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(strb_reg_next[2]),
        .Q(\strb_reg_next_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \strb_reg_next_reg[3] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(strb_reg_next[3]),
        .Q(\strb_reg_next_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \strb_reg_reg[0] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\strb_reg_next_reg_n_0_[0] ),
        .Q(strb_reg[0]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \strb_reg_reg[1] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\strb_reg_next_reg_n_0_[1] ),
        .Q(strb_reg[1]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \strb_reg_reg[2] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\strb_reg_next_reg_n_0_[2] ),
        .Q(strb_reg[2]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \strb_reg_reg[3] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\strb_reg_next_reg_n_0_[3] ),
        .Q(strb_reg[3]),
        .R(\state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[0]_i_1 
       (.I0(U_WDATA[0]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[0]),
        .O(\write_data_reg_next[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[10]_i_1 
       (.I0(U_WDATA[10]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[10]),
        .O(\write_data_reg_next[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[11]_i_1 
       (.I0(U_WDATA[11]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[11]),
        .O(\write_data_reg_next[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[12]_i_1 
       (.I0(U_WDATA[12]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[12]),
        .O(\write_data_reg_next[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[13]_i_1 
       (.I0(U_WDATA[13]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[13]),
        .O(\write_data_reg_next[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[14]_i_1 
       (.I0(U_WDATA[14]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[14]),
        .O(\write_data_reg_next[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[15]_i_1 
       (.I0(U_WDATA[15]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[15]),
        .O(\write_data_reg_next[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[16]_i_1 
       (.I0(U_WDATA[16]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[16]),
        .O(\write_data_reg_next[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[17]_i_1 
       (.I0(U_WDATA[17]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[17]),
        .O(\write_data_reg_next[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[18]_i_1 
       (.I0(U_WDATA[18]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[18]),
        .O(\write_data_reg_next[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[19]_i_1 
       (.I0(U_WDATA[19]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[19]),
        .O(\write_data_reg_next[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[1]_i_1 
       (.I0(U_WDATA[1]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[1]),
        .O(\write_data_reg_next[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[20]_i_1 
       (.I0(U_WDATA[20]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[20]),
        .O(\write_data_reg_next[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[21]_i_1 
       (.I0(U_WDATA[21]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[21]),
        .O(\write_data_reg_next[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[22]_i_1 
       (.I0(U_WDATA[22]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[22]),
        .O(\write_data_reg_next[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[23]_i_1 
       (.I0(U_WDATA[23]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[23]),
        .O(\write_data_reg_next[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[24]_i_1 
       (.I0(U_WDATA[24]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[24]),
        .O(\write_data_reg_next[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[25]_i_1 
       (.I0(U_WDATA[25]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[25]),
        .O(\write_data_reg_next[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[26]_i_1 
       (.I0(U_WDATA[26]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[26]),
        .O(\write_data_reg_next[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[27]_i_1 
       (.I0(U_WDATA[27]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[27]),
        .O(\write_data_reg_next[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[28]_i_1 
       (.I0(U_WDATA[28]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[28]),
        .O(\write_data_reg_next[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[29]_i_1 
       (.I0(U_WDATA[29]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[29]),
        .O(\write_data_reg_next[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[2]_i_1 
       (.I0(U_WDATA[2]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[2]),
        .O(\write_data_reg_next[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[30]_i_1 
       (.I0(U_WDATA[30]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[30]),
        .O(\write_data_reg_next[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[31]_i_1 
       (.I0(U_WDATA[31]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[31]),
        .O(\write_data_reg_next[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[3]_i_1 
       (.I0(U_WDATA[3]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[3]),
        .O(\write_data_reg_next[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[4]_i_1 
       (.I0(U_WDATA[4]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[4]),
        .O(\write_data_reg_next[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[5]_i_1 
       (.I0(U_WDATA[5]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[5]),
        .O(\write_data_reg_next[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[6]_i_1 
       (.I0(U_WDATA[6]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[6]),
        .O(\write_data_reg_next[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[7]_i_1 
       (.I0(U_WDATA[7]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[7]),
        .O(\write_data_reg_next[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[8]_i_1 
       (.I0(U_WDATA[8]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[8]),
        .O(\write_data_reg_next[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \write_data_reg_next[9]_i_1 
       (.I0(U_WDATA[9]),
        .I1(\strb_reg_next[3]_i_2_n_0 ),
        .I2(write_data_reg[9]),
        .O(\write_data_reg_next[9]_i_1_n_0 ));
  FDRE \write_data_reg_next_reg[0] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[0]_i_1_n_0 ),
        .Q(write_data_reg_next[0]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[10] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[10]_i_1_n_0 ),
        .Q(write_data_reg_next[10]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[11] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[11]_i_1_n_0 ),
        .Q(write_data_reg_next[11]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[12] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[12]_i_1_n_0 ),
        .Q(write_data_reg_next[12]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[13] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[13]_i_1_n_0 ),
        .Q(write_data_reg_next[13]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[14] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[14]_i_1_n_0 ),
        .Q(write_data_reg_next[14]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[15] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[15]_i_1_n_0 ),
        .Q(write_data_reg_next[15]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[16] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[16]_i_1_n_0 ),
        .Q(write_data_reg_next[16]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[17] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[17]_i_1_n_0 ),
        .Q(write_data_reg_next[17]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[18] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[18]_i_1_n_0 ),
        .Q(write_data_reg_next[18]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[19] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[19]_i_1_n_0 ),
        .Q(write_data_reg_next[19]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[1] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[1]_i_1_n_0 ),
        .Q(write_data_reg_next[1]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[20] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[20]_i_1_n_0 ),
        .Q(write_data_reg_next[20]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[21] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[21]_i_1_n_0 ),
        .Q(write_data_reg_next[21]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[22] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[22]_i_1_n_0 ),
        .Q(write_data_reg_next[22]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[23] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[23]_i_1_n_0 ),
        .Q(write_data_reg_next[23]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[24] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[24]_i_1_n_0 ),
        .Q(write_data_reg_next[24]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[25] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[25]_i_1_n_0 ),
        .Q(write_data_reg_next[25]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[26] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[26]_i_1_n_0 ),
        .Q(write_data_reg_next[26]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[27] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[27]_i_1_n_0 ),
        .Q(write_data_reg_next[27]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[28] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[28]_i_1_n_0 ),
        .Q(write_data_reg_next[28]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[29] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[29]_i_1_n_0 ),
        .Q(write_data_reg_next[29]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[2] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[2]_i_1_n_0 ),
        .Q(write_data_reg_next[2]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[30] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[30]_i_1_n_0 ),
        .Q(write_data_reg_next[30]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[31] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[31]_i_1_n_0 ),
        .Q(write_data_reg_next[31]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[3] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[3]_i_1_n_0 ),
        .Q(write_data_reg_next[3]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[4] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[4]_i_1_n_0 ),
        .Q(write_data_reg_next[4]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[5] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[5]_i_1_n_0 ),
        .Q(write_data_reg_next[5]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[6] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[6]_i_1_n_0 ),
        .Q(write_data_reg_next[6]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[7] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[7]_i_1_n_0 ),
        .Q(write_data_reg_next[7]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[8] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[8]_i_1_n_0 ),
        .Q(write_data_reg_next[8]),
        .R(1'b0));
  FDRE \write_data_reg_next_reg[9] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(\write_data_reg_next[9]_i_1_n_0 ),
        .Q(write_data_reg_next[9]),
        .R(1'b0));
  FDRE \write_data_reg_reg[0] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[0]),
        .Q(write_data_reg[0]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[10] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[10]),
        .Q(write_data_reg[10]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[11] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[11]),
        .Q(write_data_reg[11]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[12] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[12]),
        .Q(write_data_reg[12]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[13] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[13]),
        .Q(write_data_reg[13]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[14] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[14]),
        .Q(write_data_reg[14]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[15] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[15]),
        .Q(write_data_reg[15]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[16] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[16]),
        .Q(write_data_reg[16]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[17] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[17]),
        .Q(write_data_reg[17]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[18] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[18]),
        .Q(write_data_reg[18]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[19] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[19]),
        .Q(write_data_reg[19]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[1] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[1]),
        .Q(write_data_reg[1]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[20] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[20]),
        .Q(write_data_reg[20]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[21] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[21]),
        .Q(write_data_reg[21]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[22] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[22]),
        .Q(write_data_reg[22]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[23] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[23]),
        .Q(write_data_reg[23]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[24] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[24]),
        .Q(write_data_reg[24]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[25] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[25]),
        .Q(write_data_reg[25]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[26] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[26]),
        .Q(write_data_reg[26]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[27] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[27]),
        .Q(write_data_reg[27]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[28] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[28]),
        .Q(write_data_reg[28]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[29] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[29]),
        .Q(write_data_reg[29]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[2] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[2]),
        .Q(write_data_reg[2]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[30] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[30]),
        .Q(write_data_reg[30]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[31] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[31]),
        .Q(write_data_reg[31]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[3] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[3]),
        .Q(write_data_reg[3]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[4] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[4]),
        .Q(write_data_reg[4]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[5] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[5]),
        .Q(write_data_reg[5]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[6] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[6]),
        .Q(write_data_reg[6]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[7] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[7]),
        .Q(write_data_reg[7]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[8] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[8]),
        .Q(write_data_reg[8]),
        .R(\state[4]_i_1_n_0 ));
  FDRE \write_data_reg_reg[9] 
       (.C(M_ACLK),
        .CE(1'b1),
        .D(write_data_reg_next[9]),
        .Q(write_data_reg[9]),
        .R(\state[4]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "axi_test_1_axi_master_fsm_0_0,axi_master_fsm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_master_fsm,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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

  wire M_ACLK;
  wire [31:0]M_ARADDR;
  wire M_ARESET_N;
  wire M_ARVALID;
  wire [31:0]M_AWADDR;
  wire M_AWVALID;
  wire [3:0]M_BLEN;
  wire M_RREADY;
  wire [31:0]M_WDATA;
  wire [3:0]M_WSTRB;
  wire M_WVALID;
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_fsm inst
       (.M_ACLK(M_ACLK),
        .M_ARADDR(M_ARADDR),
        .M_ARESET_N(M_ARESET_N),
        .M_ARVALID(M_ARVALID),
        .M_AWADDR(M_AWADDR),
        .M_AWVALID(M_AWVALID),
        .M_BLEN(M_BLEN),
        .M_RREADY(M_RREADY),
        .M_WDATA(M_WDATA),
        .M_WSTRB(M_WSTRB),
        .M_WVALID(M_WVALID),
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
