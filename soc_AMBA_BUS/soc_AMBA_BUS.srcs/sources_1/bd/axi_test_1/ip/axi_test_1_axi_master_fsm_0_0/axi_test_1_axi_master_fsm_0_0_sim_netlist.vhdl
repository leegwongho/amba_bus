-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Oct  7 20:33:44 2024
-- Host        : leegwongho running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/github/amba_bus/soc_AMBA_BUS/soc_AMBA_BUS.srcs/sources_1/bd/axi_test_1/ip/axi_test_1_axi_master_fsm_0_0/axi_test_1_axi_master_fsm_0_0_sim_netlist.vhdl
-- Design      : axi_test_1_axi_master_fsm_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_test_1_axi_master_fsm_0_0_axi_master_fsm is
  port (
    M_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_BLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    U_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AWVALID : out STD_LOGIC;
    M_WVALID : out STD_LOGIC;
    M_ARVALID : out STD_LOGIC;
    M_RREADY : out STD_LOGIC;
    M_ACLK : in STD_LOGIC;
    U_WVALID : in STD_LOGIC;
    S_AWREADY : in STD_LOGIC;
    S_WREADY : in STD_LOGIC;
    U_RVALID : in STD_LOGIC;
    S_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    U_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    U_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    U_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    U_BLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    U_STRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_ARREADY : in STD_LOGIC;
    S_RVALID : in STD_LOGIC;
    M_ARESET_N : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_test_1_axi_master_fsm_0_0_axi_master_fsm : entity is "axi_master_fsm";
end axi_test_1_axi_master_fsm_0_0_axi_master_fsm;

architecture STRUCTURE of axi_test_1_axi_master_fsm_0_0_axi_master_fsm is
  signal \M_ARADDR[31]_i_1_n_0\ : STD_LOGIC;
  signal \^m_arvalid\ : STD_LOGIC;
  signal M_ARVALID_i_1_n_0 : STD_LOGIC;
  signal M_ARVALID_i_2_n_0 : STD_LOGIC;
  signal \M_AWADDR[31]_i_1_n_0\ : STD_LOGIC;
  signal \^m_awvalid\ : STD_LOGIC;
  signal M_AWVALID_i_1_n_0 : STD_LOGIC;
  signal M_AWVALID_i_2_n_0 : STD_LOGIC;
  signal \^m_rready\ : STD_LOGIC;
  signal M_RREADY_i_1_n_0 : STD_LOGIC;
  signal M_RREADY_i_2_n_0 : STD_LOGIC;
  signal \^m_wvalid\ : STD_LOGIC;
  signal M_WVALID_i_1_n_0 : STD_LOGIC;
  signal M_WVALID_i_2_n_0 : STD_LOGIC;
  signal \U_RDATA[31]_i_1_n_0\ : STD_LOGIC;
  signal araddr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal araddr_reg_next : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \araddr_reg_next[0]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[10]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[11]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[12]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[13]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[14]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[15]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[16]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[17]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[18]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[19]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[1]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[20]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[21]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[22]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[23]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[24]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[25]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[26]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[27]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[28]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[29]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[2]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[30]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[31]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[3]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[4]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[5]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[6]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[7]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[8]_i_1_n_0\ : STD_LOGIC;
  signal \araddr_reg_next[9]_i_1_n_0\ : STD_LOGIC;
  signal awaddr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal awaddr_reg_next : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \awaddr_reg_next[0]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[10]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[11]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[12]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[13]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[14]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[15]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[16]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[17]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[18]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[19]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[1]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[20]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[21]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[22]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[23]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[24]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[25]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[26]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[27]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[28]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[29]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[2]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[30]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[31]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[3]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[4]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[5]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[6]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[7]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[8]_i_1_n_0\ : STD_LOGIC;
  signal \awaddr_reg_next[9]_i_1_n_0\ : STD_LOGIC;
  signal burst_lenth : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal burst_lenth_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \burst_lenth_next_reg_n_0_[0]\ : STD_LOGIC;
  signal \burst_lenth_next_reg_n_0_[1]\ : STD_LOGIC;
  signal \burst_lenth_next_reg_n_0_[2]\ : STD_LOGIC;
  signal \burst_lenth_next_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal read_data_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal read_data_reg_next : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \read_data_reg_next[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[10]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[11]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[12]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[13]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[14]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[15]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[16]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[17]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[18]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[19]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[20]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[21]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[22]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[23]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[24]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[25]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[26]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[27]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[28]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[29]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[30]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[31]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[6]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[7]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[8]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg_next[9]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \^state_next\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \state_next[0]_i_2_n_0\ : STD_LOGIC;
  signal \state_next[0]_i_3_n_0\ : STD_LOGIC;
  signal \state_next[1]_i_2_n_0\ : STD_LOGIC;
  signal \state_next[1]_i_3_n_0\ : STD_LOGIC;
  signal \state_next[2]_i_2_n_0\ : STD_LOGIC;
  signal \state_next[2]_i_3_n_0\ : STD_LOGIC;
  signal \state_next[2]_i_4_n_0\ : STD_LOGIC;
  signal \state_next[3]_i_2_n_0\ : STD_LOGIC;
  signal \state_next[4]_i_2_n_0\ : STD_LOGIC;
  signal \state_next[4]_i_3_n_0\ : STD_LOGIC;
  signal state_next_n_0 : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal \state_reg_n_0_[4]\ : STD_LOGIC;
  signal strb_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal strb_reg_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \strb_reg_next[3]_i_2_n_0\ : STD_LOGIC;
  signal \strb_reg_next_reg_n_0_[0]\ : STD_LOGIC;
  signal \strb_reg_next_reg_n_0_[1]\ : STD_LOGIC;
  signal \strb_reg_next_reg_n_0_[2]\ : STD_LOGIC;
  signal \strb_reg_next_reg_n_0_[3]\ : STD_LOGIC;
  signal write_data_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal write_data_reg_next : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \write_data_reg_next[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[10]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[11]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[12]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[13]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[14]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[15]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[16]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[17]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[18]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[19]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[20]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[21]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[22]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[23]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[24]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[25]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[26]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[27]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[28]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[29]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[30]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[31]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[3]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[4]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[5]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[6]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[7]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[8]_i_1_n_0\ : STD_LOGIC;
  signal \write_data_reg_next[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of M_ARVALID_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of M_WVALID_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \araddr_reg_next[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \araddr_reg_next[10]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \araddr_reg_next[11]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \araddr_reg_next[12]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \araddr_reg_next[13]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \araddr_reg_next[14]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \araddr_reg_next[15]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \araddr_reg_next[16]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \araddr_reg_next[17]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \araddr_reg_next[18]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \araddr_reg_next[19]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \araddr_reg_next[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \araddr_reg_next[20]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \araddr_reg_next[21]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \araddr_reg_next[22]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \araddr_reg_next[23]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \araddr_reg_next[24]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \araddr_reg_next[25]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \araddr_reg_next[26]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \araddr_reg_next[27]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \araddr_reg_next[28]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \araddr_reg_next[29]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \araddr_reg_next[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \araddr_reg_next[30]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \araddr_reg_next[31]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \araddr_reg_next[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \araddr_reg_next[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \araddr_reg_next[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \araddr_reg_next[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \araddr_reg_next[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \araddr_reg_next[8]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \araddr_reg_next[9]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \awaddr_reg_next[0]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \awaddr_reg_next[10]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \awaddr_reg_next[11]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \awaddr_reg_next[12]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \awaddr_reg_next[13]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \awaddr_reg_next[14]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \awaddr_reg_next[15]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \awaddr_reg_next[16]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \awaddr_reg_next[17]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \awaddr_reg_next[18]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \awaddr_reg_next[19]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \awaddr_reg_next[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \awaddr_reg_next[20]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \awaddr_reg_next[21]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \awaddr_reg_next[22]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \awaddr_reg_next[23]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \awaddr_reg_next[24]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \awaddr_reg_next[25]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \awaddr_reg_next[26]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \awaddr_reg_next[27]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \awaddr_reg_next[28]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \awaddr_reg_next[29]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \awaddr_reg_next[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \awaddr_reg_next[30]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \awaddr_reg_next[31]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \awaddr_reg_next[3]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \awaddr_reg_next[4]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \awaddr_reg_next[5]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \awaddr_reg_next[6]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \awaddr_reg_next[7]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \awaddr_reg_next[8]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \awaddr_reg_next[9]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \burst_lenth_next[0]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \burst_lenth_next[1]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \burst_lenth_next[2]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \burst_lenth_next[3]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \read_data_reg_next[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_data_reg_next[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \read_data_reg_next[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \read_data_reg_next[12]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \read_data_reg_next[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \read_data_reg_next[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \read_data_reg_next[15]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \read_data_reg_next[16]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \read_data_reg_next[17]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_data_reg_next[18]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_data_reg_next[19]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_data_reg_next[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_data_reg_next[20]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_data_reg_next[21]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \read_data_reg_next[22]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \read_data_reg_next[23]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \read_data_reg_next[24]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \read_data_reg_next[25]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \read_data_reg_next[26]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \read_data_reg_next[27]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \read_data_reg_next[28]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \read_data_reg_next[29]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \read_data_reg_next[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_data_reg_next[30]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \read_data_reg_next[31]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \read_data_reg_next[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_data_reg_next[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \read_data_reg_next[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \read_data_reg_next[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \read_data_reg_next[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \read_data_reg_next[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \read_data_reg_next[9]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of state_next : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state_next[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state_next[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state_next[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state_next[2]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state_next[4]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \state_reg[0]\ : label is "STATE_AWADDR:000000100,STATE_ARADDR:000000010,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,IDLE:000000001";
  attribute FSM_ENCODED_STATES of \state_reg[1]\ : label is "STATE_AWADDR:000000100,STATE_ARADDR:000000010,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,IDLE:000000001";
  attribute FSM_ENCODED_STATES of \state_reg[2]\ : label is "STATE_AWADDR:000000100,STATE_ARADDR:000000010,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,IDLE:000000001";
  attribute FSM_ENCODED_STATES of \state_reg[3]\ : label is "STATE_AWADDR:000000100,STATE_ARADDR:000000010,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,IDLE:000000001";
  attribute FSM_ENCODED_STATES of \state_reg[4]\ : label is "STATE_AWADDR:000000100,STATE_ARADDR:000000010,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,IDLE:000000001";
  attribute SOFT_HLUTNM of \strb_reg_next[0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \strb_reg_next[1]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \strb_reg_next[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \strb_reg_next[3]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \write_data_reg_next[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \write_data_reg_next[10]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \write_data_reg_next[11]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \write_data_reg_next[12]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \write_data_reg_next[13]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \write_data_reg_next[14]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \write_data_reg_next[15]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \write_data_reg_next[16]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \write_data_reg_next[17]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \write_data_reg_next[18]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \write_data_reg_next[19]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \write_data_reg_next[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \write_data_reg_next[20]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \write_data_reg_next[21]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \write_data_reg_next[22]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \write_data_reg_next[23]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \write_data_reg_next[24]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \write_data_reg_next[25]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \write_data_reg_next[26]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \write_data_reg_next[27]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \write_data_reg_next[28]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \write_data_reg_next[29]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \write_data_reg_next[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \write_data_reg_next[30]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \write_data_reg_next[31]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \write_data_reg_next[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \write_data_reg_next[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \write_data_reg_next[5]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \write_data_reg_next[6]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \write_data_reg_next[7]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \write_data_reg_next[8]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \write_data_reg_next[9]_i_1\ : label is "soft_lutpair40";
begin
  M_ARVALID <= \^m_arvalid\;
  M_AWVALID <= \^m_awvalid\;
  M_RREADY <= \^m_rready\;
  M_WVALID <= \^m_wvalid\;
\M_ARADDR[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => U_RVALID,
      O => \M_ARADDR[31]_i_1_n_0\
    );
\M_ARADDR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(0),
      Q => M_ARADDR(0),
      R => '0'
    );
\M_ARADDR_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(10),
      Q => M_ARADDR(10),
      R => '0'
    );
\M_ARADDR_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(11),
      Q => M_ARADDR(11),
      R => '0'
    );
\M_ARADDR_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(12),
      Q => M_ARADDR(12),
      R => '0'
    );
\M_ARADDR_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(13),
      Q => M_ARADDR(13),
      R => '0'
    );
\M_ARADDR_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(14),
      Q => M_ARADDR(14),
      R => '0'
    );
\M_ARADDR_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(15),
      Q => M_ARADDR(15),
      R => '0'
    );
\M_ARADDR_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(16),
      Q => M_ARADDR(16),
      R => '0'
    );
\M_ARADDR_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(17),
      Q => M_ARADDR(17),
      R => '0'
    );
\M_ARADDR_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(18),
      Q => M_ARADDR(18),
      R => '0'
    );
\M_ARADDR_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(19),
      Q => M_ARADDR(19),
      R => '0'
    );
\M_ARADDR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(1),
      Q => M_ARADDR(1),
      R => '0'
    );
\M_ARADDR_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(20),
      Q => M_ARADDR(20),
      R => '0'
    );
\M_ARADDR_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(21),
      Q => M_ARADDR(21),
      R => '0'
    );
\M_ARADDR_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(22),
      Q => M_ARADDR(22),
      R => '0'
    );
\M_ARADDR_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(23),
      Q => M_ARADDR(23),
      R => '0'
    );
\M_ARADDR_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(24),
      Q => M_ARADDR(24),
      R => '0'
    );
\M_ARADDR_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(25),
      Q => M_ARADDR(25),
      R => '0'
    );
\M_ARADDR_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(26),
      Q => M_ARADDR(26),
      R => '0'
    );
\M_ARADDR_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(27),
      Q => M_ARADDR(27),
      R => '0'
    );
\M_ARADDR_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(28),
      Q => M_ARADDR(28),
      R => '0'
    );
\M_ARADDR_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(29),
      Q => M_ARADDR(29),
      R => '0'
    );
\M_ARADDR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(2),
      Q => M_ARADDR(2),
      R => '0'
    );
\M_ARADDR_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(30),
      Q => M_ARADDR(30),
      R => '0'
    );
\M_ARADDR_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(31),
      Q => M_ARADDR(31),
      R => '0'
    );
\M_ARADDR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(3),
      Q => M_ARADDR(3),
      R => '0'
    );
\M_ARADDR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(4),
      Q => M_ARADDR(4),
      R => '0'
    );
\M_ARADDR_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(5),
      Q => M_ARADDR(5),
      R => '0'
    );
\M_ARADDR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(6),
      Q => M_ARADDR(6),
      R => '0'
    );
\M_ARADDR_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(7),
      Q => M_ARADDR(7),
      R => '0'
    );
\M_ARADDR_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(8),
      Q => M_ARADDR(8),
      R => '0'
    );
\M_ARADDR_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => araddr_reg(9),
      Q => M_ARADDR(9),
      R => '0'
    );
M_ARVALID_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF7F700AA0000"
    )
        port map (
      I0 => M_ARVALID_i_2_n_0,
      I1 => S_ARREADY,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => U_RVALID,
      I5 => \^m_arvalid\,
      O => M_ARVALID_i_1_n_0
    );
M_ARVALID_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001110"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[4]\,
      O => M_ARVALID_i_2_n_0
    );
M_ARVALID_reg: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => M_ARVALID_i_1_n_0,
      Q => \^m_arvalid\,
      R => '0'
    );
\M_AWADDR[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => U_WVALID,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1]\,
      O => \M_AWADDR[31]_i_1_n_0\
    );
\M_AWADDR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(0),
      Q => M_AWADDR(0),
      R => '0'
    );
\M_AWADDR_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(10),
      Q => M_AWADDR(10),
      R => '0'
    );
\M_AWADDR_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(11),
      Q => M_AWADDR(11),
      R => '0'
    );
\M_AWADDR_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(12),
      Q => M_AWADDR(12),
      R => '0'
    );
\M_AWADDR_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(13),
      Q => M_AWADDR(13),
      R => '0'
    );
\M_AWADDR_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(14),
      Q => M_AWADDR(14),
      R => '0'
    );
\M_AWADDR_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(15),
      Q => M_AWADDR(15),
      R => '0'
    );
\M_AWADDR_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(16),
      Q => M_AWADDR(16),
      R => '0'
    );
\M_AWADDR_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(17),
      Q => M_AWADDR(17),
      R => '0'
    );
\M_AWADDR_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(18),
      Q => M_AWADDR(18),
      R => '0'
    );
\M_AWADDR_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(19),
      Q => M_AWADDR(19),
      R => '0'
    );
\M_AWADDR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(1),
      Q => M_AWADDR(1),
      R => '0'
    );
\M_AWADDR_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(20),
      Q => M_AWADDR(20),
      R => '0'
    );
\M_AWADDR_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(21),
      Q => M_AWADDR(21),
      R => '0'
    );
\M_AWADDR_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(22),
      Q => M_AWADDR(22),
      R => '0'
    );
\M_AWADDR_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(23),
      Q => M_AWADDR(23),
      R => '0'
    );
\M_AWADDR_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(24),
      Q => M_AWADDR(24),
      R => '0'
    );
\M_AWADDR_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(25),
      Q => M_AWADDR(25),
      R => '0'
    );
\M_AWADDR_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(26),
      Q => M_AWADDR(26),
      R => '0'
    );
\M_AWADDR_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(27),
      Q => M_AWADDR(27),
      R => '0'
    );
\M_AWADDR_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(28),
      Q => M_AWADDR(28),
      R => '0'
    );
\M_AWADDR_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(29),
      Q => M_AWADDR(29),
      R => '0'
    );
\M_AWADDR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(2),
      Q => M_AWADDR(2),
      R => '0'
    );
\M_AWADDR_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(30),
      Q => M_AWADDR(30),
      R => '0'
    );
\M_AWADDR_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(31),
      Q => M_AWADDR(31),
      R => '0'
    );
\M_AWADDR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(3),
      Q => M_AWADDR(3),
      R => '0'
    );
\M_AWADDR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(4),
      Q => M_AWADDR(4),
      R => '0'
    );
\M_AWADDR_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(5),
      Q => M_AWADDR(5),
      R => '0'
    );
\M_AWADDR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(6),
      Q => M_AWADDR(6),
      R => '0'
    );
\M_AWADDR_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(7),
      Q => M_AWADDR(7),
      R => '0'
    );
\M_AWADDR_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(8),
      Q => M_AWADDR(8),
      R => '0'
    );
\M_AWADDR_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => awaddr_reg(9),
      Q => M_AWADDR(9),
      R => '0'
    );
M_AWVALID_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF200000002"
    )
        port map (
      I0 => U_WVALID,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => M_AWVALID_i_2_n_0,
      I5 => \^m_awvalid\,
      O => M_AWVALID_i_1_n_0
    );
M_AWVALID_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FABFFFBF"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => S_AWREADY,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => U_WVALID,
      O => M_AWVALID_i_2_n_0
    );
M_AWVALID_reg: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => M_AWVALID_i_1_n_0,
      Q => \^m_awvalid\,
      R => '0'
    );
\M_BLEN_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => burst_lenth(0),
      Q => M_BLEN(0),
      R => '0'
    );
\M_BLEN_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => burst_lenth(1),
      Q => M_BLEN(1),
      R => '0'
    );
\M_BLEN_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => burst_lenth(2),
      Q => M_BLEN(2),
      R => '0'
    );
\M_BLEN_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_ARADDR[31]_i_1_n_0\,
      D => burst_lenth(3),
      Q => M_BLEN(3),
      R => '0'
    );
M_RREADY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFFFFFF00880000"
    )
        port map (
      I0 => U_RVALID,
      I1 => \state_reg_n_0_[0]\,
      I2 => S_RVALID,
      I3 => \state_reg_n_0_[3]\,
      I4 => M_RREADY_i_2_n_0,
      I5 => \^m_rready\,
      O => M_RREADY_i_1_n_0
    );
M_RREADY_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[4]\,
      O => M_RREADY_i_2_n_0
    );
M_RREADY_reg: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => M_RREADY_i_1_n_0,
      Q => \^m_rready\,
      R => '0'
    );
\M_WDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(0),
      Q => M_WDATA(0),
      R => '0'
    );
\M_WDATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(10),
      Q => M_WDATA(10),
      R => '0'
    );
\M_WDATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(11),
      Q => M_WDATA(11),
      R => '0'
    );
\M_WDATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(12),
      Q => M_WDATA(12),
      R => '0'
    );
\M_WDATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(13),
      Q => M_WDATA(13),
      R => '0'
    );
\M_WDATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(14),
      Q => M_WDATA(14),
      R => '0'
    );
\M_WDATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(15),
      Q => M_WDATA(15),
      R => '0'
    );
\M_WDATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(16),
      Q => M_WDATA(16),
      R => '0'
    );
\M_WDATA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(17),
      Q => M_WDATA(17),
      R => '0'
    );
\M_WDATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(18),
      Q => M_WDATA(18),
      R => '0'
    );
\M_WDATA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(19),
      Q => M_WDATA(19),
      R => '0'
    );
\M_WDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(1),
      Q => M_WDATA(1),
      R => '0'
    );
\M_WDATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(20),
      Q => M_WDATA(20),
      R => '0'
    );
\M_WDATA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(21),
      Q => M_WDATA(21),
      R => '0'
    );
\M_WDATA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(22),
      Q => M_WDATA(22),
      R => '0'
    );
\M_WDATA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(23),
      Q => M_WDATA(23),
      R => '0'
    );
\M_WDATA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(24),
      Q => M_WDATA(24),
      R => '0'
    );
\M_WDATA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(25),
      Q => M_WDATA(25),
      R => '0'
    );
\M_WDATA_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(26),
      Q => M_WDATA(26),
      R => '0'
    );
\M_WDATA_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(27),
      Q => M_WDATA(27),
      R => '0'
    );
\M_WDATA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(28),
      Q => M_WDATA(28),
      R => '0'
    );
\M_WDATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(29),
      Q => M_WDATA(29),
      R => '0'
    );
\M_WDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(2),
      Q => M_WDATA(2),
      R => '0'
    );
\M_WDATA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(30),
      Q => M_WDATA(30),
      R => '0'
    );
\M_WDATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(31),
      Q => M_WDATA(31),
      R => '0'
    );
\M_WDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(3),
      Q => M_WDATA(3),
      R => '0'
    );
\M_WDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(4),
      Q => M_WDATA(4),
      R => '0'
    );
\M_WDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(5),
      Q => M_WDATA(5),
      R => '0'
    );
\M_WDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(6),
      Q => M_WDATA(6),
      R => '0'
    );
\M_WDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(7),
      Q => M_WDATA(7),
      R => '0'
    );
\M_WDATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(8),
      Q => M_WDATA(8),
      R => '0'
    );
\M_WDATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => write_data_reg(9),
      Q => M_WDATA(9),
      R => '0'
    );
\M_WSTRB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => strb_reg(0),
      Q => M_WSTRB(0),
      R => '0'
    );
\M_WSTRB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => strb_reg(1),
      Q => M_WSTRB(1),
      R => '0'
    );
\M_WSTRB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => strb_reg(2),
      Q => M_WSTRB(2),
      R => '0'
    );
\M_WSTRB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \M_AWADDR[31]_i_1_n_0\,
      D => strb_reg(3),
      Q => M_WSTRB(3),
      R => '0'
    );
M_WVALID_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF200000002"
    )
        port map (
      I0 => U_WVALID,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => M_WVALID_i_2_n_0,
      I5 => \^m_wvalid\,
      O => M_WVALID_i_1_n_0
    );
M_WVALID_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF53F"
    )
        port map (
      I0 => S_WREADY,
      I1 => U_WVALID,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \state_reg_n_0_[3]\,
      O => M_WVALID_i_2_n_0
    );
M_WVALID_reg: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => M_WVALID_i_1_n_0,
      Q => \^m_wvalid\,
      R => '0'
    );
\U_RDATA[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[4]\,
      O => \U_RDATA[31]_i_1_n_0\
    );
\U_RDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(0),
      Q => U_RDATA(0),
      R => '0'
    );
\U_RDATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(10),
      Q => U_RDATA(10),
      R => '0'
    );
\U_RDATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(11),
      Q => U_RDATA(11),
      R => '0'
    );
\U_RDATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(12),
      Q => U_RDATA(12),
      R => '0'
    );
\U_RDATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(13),
      Q => U_RDATA(13),
      R => '0'
    );
\U_RDATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(14),
      Q => U_RDATA(14),
      R => '0'
    );
\U_RDATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(15),
      Q => U_RDATA(15),
      R => '0'
    );
\U_RDATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(16),
      Q => U_RDATA(16),
      R => '0'
    );
\U_RDATA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(17),
      Q => U_RDATA(17),
      R => '0'
    );
\U_RDATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(18),
      Q => U_RDATA(18),
      R => '0'
    );
\U_RDATA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(19),
      Q => U_RDATA(19),
      R => '0'
    );
\U_RDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(1),
      Q => U_RDATA(1),
      R => '0'
    );
\U_RDATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(20),
      Q => U_RDATA(20),
      R => '0'
    );
\U_RDATA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(21),
      Q => U_RDATA(21),
      R => '0'
    );
\U_RDATA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(22),
      Q => U_RDATA(22),
      R => '0'
    );
\U_RDATA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(23),
      Q => U_RDATA(23),
      R => '0'
    );
\U_RDATA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(24),
      Q => U_RDATA(24),
      R => '0'
    );
\U_RDATA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(25),
      Q => U_RDATA(25),
      R => '0'
    );
\U_RDATA_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(26),
      Q => U_RDATA(26),
      R => '0'
    );
\U_RDATA_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(27),
      Q => U_RDATA(27),
      R => '0'
    );
\U_RDATA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(28),
      Q => U_RDATA(28),
      R => '0'
    );
\U_RDATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(29),
      Q => U_RDATA(29),
      R => '0'
    );
\U_RDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(2),
      Q => U_RDATA(2),
      R => '0'
    );
\U_RDATA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(30),
      Q => U_RDATA(30),
      R => '0'
    );
\U_RDATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(31),
      Q => U_RDATA(31),
      R => '0'
    );
\U_RDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(3),
      Q => U_RDATA(3),
      R => '0'
    );
\U_RDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(4),
      Q => U_RDATA(4),
      R => '0'
    );
\U_RDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(5),
      Q => U_RDATA(5),
      R => '0'
    );
\U_RDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(6),
      Q => U_RDATA(6),
      R => '0'
    );
\U_RDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(7),
      Q => U_RDATA(7),
      R => '0'
    );
\U_RDATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(8),
      Q => U_RDATA(8),
      R => '0'
    );
\U_RDATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \U_RDATA[31]_i_1_n_0\,
      D => read_data_reg(9),
      Q => U_RDATA(9),
      R => '0'
    );
\araddr_reg_next[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(0),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(0),
      O => \araddr_reg_next[0]_i_1_n_0\
    );
\araddr_reg_next[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(10),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(10),
      O => \araddr_reg_next[10]_i_1_n_0\
    );
\araddr_reg_next[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(11),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(11),
      O => \araddr_reg_next[11]_i_1_n_0\
    );
\araddr_reg_next[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(12),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(12),
      O => \araddr_reg_next[12]_i_1_n_0\
    );
\araddr_reg_next[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(13),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(13),
      O => \araddr_reg_next[13]_i_1_n_0\
    );
\araddr_reg_next[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(14),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(14),
      O => \araddr_reg_next[14]_i_1_n_0\
    );
\araddr_reg_next[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(15),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(15),
      O => \araddr_reg_next[15]_i_1_n_0\
    );
\araddr_reg_next[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(16),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(16),
      O => \araddr_reg_next[16]_i_1_n_0\
    );
\araddr_reg_next[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(17),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(17),
      O => \araddr_reg_next[17]_i_1_n_0\
    );
\araddr_reg_next[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(18),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(18),
      O => \araddr_reg_next[18]_i_1_n_0\
    );
\araddr_reg_next[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(19),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(19),
      O => \araddr_reg_next[19]_i_1_n_0\
    );
\araddr_reg_next[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(1),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(1),
      O => \araddr_reg_next[1]_i_1_n_0\
    );
\araddr_reg_next[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(20),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(20),
      O => \araddr_reg_next[20]_i_1_n_0\
    );
\araddr_reg_next[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(21),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(21),
      O => \araddr_reg_next[21]_i_1_n_0\
    );
\araddr_reg_next[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(22),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(22),
      O => \araddr_reg_next[22]_i_1_n_0\
    );
\araddr_reg_next[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(23),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(23),
      O => \araddr_reg_next[23]_i_1_n_0\
    );
\araddr_reg_next[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(24),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(24),
      O => \araddr_reg_next[24]_i_1_n_0\
    );
\araddr_reg_next[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(25),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(25),
      O => \araddr_reg_next[25]_i_1_n_0\
    );
\araddr_reg_next[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(26),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(26),
      O => \araddr_reg_next[26]_i_1_n_0\
    );
\araddr_reg_next[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(27),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(27),
      O => \araddr_reg_next[27]_i_1_n_0\
    );
\araddr_reg_next[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(28),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(28),
      O => \araddr_reg_next[28]_i_1_n_0\
    );
\araddr_reg_next[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(29),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(29),
      O => \araddr_reg_next[29]_i_1_n_0\
    );
\araddr_reg_next[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(2),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(2),
      O => \araddr_reg_next[2]_i_1_n_0\
    );
\araddr_reg_next[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(30),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(30),
      O => \araddr_reg_next[30]_i_1_n_0\
    );
\araddr_reg_next[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(31),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(31),
      O => \araddr_reg_next[31]_i_1_n_0\
    );
\araddr_reg_next[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(3),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(3),
      O => \araddr_reg_next[3]_i_1_n_0\
    );
\araddr_reg_next[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(4),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(4),
      O => \araddr_reg_next[4]_i_1_n_0\
    );
\araddr_reg_next[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(5),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(5),
      O => \araddr_reg_next[5]_i_1_n_0\
    );
\araddr_reg_next[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(6),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(6),
      O => \araddr_reg_next[6]_i_1_n_0\
    );
\araddr_reg_next[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(7),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(7),
      O => \araddr_reg_next[7]_i_1_n_0\
    );
\araddr_reg_next[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(8),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(8),
      O => \araddr_reg_next[8]_i_1_n_0\
    );
\araddr_reg_next[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_ARADDR(9),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => araddr_reg(9),
      O => \araddr_reg_next[9]_i_1_n_0\
    );
\araddr_reg_next_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[0]_i_1_n_0\,
      Q => araddr_reg_next(0),
      R => '0'
    );
\araddr_reg_next_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[10]_i_1_n_0\,
      Q => araddr_reg_next(10),
      R => '0'
    );
\araddr_reg_next_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[11]_i_1_n_0\,
      Q => araddr_reg_next(11),
      R => '0'
    );
\araddr_reg_next_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[12]_i_1_n_0\,
      Q => araddr_reg_next(12),
      R => '0'
    );
\araddr_reg_next_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[13]_i_1_n_0\,
      Q => araddr_reg_next(13),
      R => '0'
    );
\araddr_reg_next_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[14]_i_1_n_0\,
      Q => araddr_reg_next(14),
      R => '0'
    );
\araddr_reg_next_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[15]_i_1_n_0\,
      Q => araddr_reg_next(15),
      R => '0'
    );
\araddr_reg_next_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[16]_i_1_n_0\,
      Q => araddr_reg_next(16),
      R => '0'
    );
\araddr_reg_next_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[17]_i_1_n_0\,
      Q => araddr_reg_next(17),
      R => '0'
    );
\araddr_reg_next_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[18]_i_1_n_0\,
      Q => araddr_reg_next(18),
      R => '0'
    );
\araddr_reg_next_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[19]_i_1_n_0\,
      Q => araddr_reg_next(19),
      R => '0'
    );
\araddr_reg_next_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[1]_i_1_n_0\,
      Q => araddr_reg_next(1),
      R => '0'
    );
\araddr_reg_next_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[20]_i_1_n_0\,
      Q => araddr_reg_next(20),
      R => '0'
    );
\araddr_reg_next_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[21]_i_1_n_0\,
      Q => araddr_reg_next(21),
      R => '0'
    );
\araddr_reg_next_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[22]_i_1_n_0\,
      Q => araddr_reg_next(22),
      R => '0'
    );
\araddr_reg_next_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[23]_i_1_n_0\,
      Q => araddr_reg_next(23),
      R => '0'
    );
\araddr_reg_next_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[24]_i_1_n_0\,
      Q => araddr_reg_next(24),
      R => '0'
    );
\araddr_reg_next_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[25]_i_1_n_0\,
      Q => araddr_reg_next(25),
      R => '0'
    );
\araddr_reg_next_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[26]_i_1_n_0\,
      Q => araddr_reg_next(26),
      R => '0'
    );
\araddr_reg_next_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[27]_i_1_n_0\,
      Q => araddr_reg_next(27),
      R => '0'
    );
\araddr_reg_next_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[28]_i_1_n_0\,
      Q => araddr_reg_next(28),
      R => '0'
    );
\araddr_reg_next_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[29]_i_1_n_0\,
      Q => araddr_reg_next(29),
      R => '0'
    );
\araddr_reg_next_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[2]_i_1_n_0\,
      Q => araddr_reg_next(2),
      R => '0'
    );
\araddr_reg_next_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[30]_i_1_n_0\,
      Q => araddr_reg_next(30),
      R => '0'
    );
\araddr_reg_next_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[31]_i_1_n_0\,
      Q => araddr_reg_next(31),
      R => '0'
    );
\araddr_reg_next_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[3]_i_1_n_0\,
      Q => araddr_reg_next(3),
      R => '0'
    );
\araddr_reg_next_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[4]_i_1_n_0\,
      Q => araddr_reg_next(4),
      R => '0'
    );
\araddr_reg_next_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[5]_i_1_n_0\,
      Q => araddr_reg_next(5),
      R => '0'
    );
\araddr_reg_next_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[6]_i_1_n_0\,
      Q => araddr_reg_next(6),
      R => '0'
    );
\araddr_reg_next_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[7]_i_1_n_0\,
      Q => araddr_reg_next(7),
      R => '0'
    );
\araddr_reg_next_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[8]_i_1_n_0\,
      Q => araddr_reg_next(8),
      R => '0'
    );
\araddr_reg_next_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \araddr_reg_next[9]_i_1_n_0\,
      Q => araddr_reg_next(9),
      R => '0'
    );
\araddr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(0),
      Q => araddr_reg(0),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(10),
      Q => araddr_reg(10),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(11),
      Q => araddr_reg(11),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(12),
      Q => araddr_reg(12),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(13),
      Q => araddr_reg(13),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(14),
      Q => araddr_reg(14),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(15),
      Q => araddr_reg(15),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(16),
      Q => araddr_reg(16),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(17),
      Q => araddr_reg(17),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(18),
      Q => araddr_reg(18),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(19),
      Q => araddr_reg(19),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(1),
      Q => araddr_reg(1),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(20),
      Q => araddr_reg(20),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(21),
      Q => araddr_reg(21),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(22),
      Q => araddr_reg(22),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(23),
      Q => araddr_reg(23),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(24),
      Q => araddr_reg(24),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(25),
      Q => araddr_reg(25),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(26),
      Q => araddr_reg(26),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(27),
      Q => araddr_reg(27),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(28),
      Q => araddr_reg(28),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(29),
      Q => araddr_reg(29),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(2),
      Q => araddr_reg(2),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(30),
      Q => araddr_reg(30),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(31),
      Q => araddr_reg(31),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(3),
      Q => araddr_reg(3),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(4),
      Q => araddr_reg(4),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(5),
      Q => araddr_reg(5),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(6),
      Q => araddr_reg(6),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(7),
      Q => araddr_reg(7),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(8),
      Q => araddr_reg(8),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => araddr_reg_next(9),
      Q => araddr_reg(9),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_next[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(0),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(0),
      O => \awaddr_reg_next[0]_i_1_n_0\
    );
\awaddr_reg_next[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(10),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(10),
      O => \awaddr_reg_next[10]_i_1_n_0\
    );
\awaddr_reg_next[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(11),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(11),
      O => \awaddr_reg_next[11]_i_1_n_0\
    );
\awaddr_reg_next[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(12),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(12),
      O => \awaddr_reg_next[12]_i_1_n_0\
    );
\awaddr_reg_next[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(13),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(13),
      O => \awaddr_reg_next[13]_i_1_n_0\
    );
\awaddr_reg_next[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(14),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(14),
      O => \awaddr_reg_next[14]_i_1_n_0\
    );
\awaddr_reg_next[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(15),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(15),
      O => \awaddr_reg_next[15]_i_1_n_0\
    );
\awaddr_reg_next[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(16),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(16),
      O => \awaddr_reg_next[16]_i_1_n_0\
    );
\awaddr_reg_next[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(17),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(17),
      O => \awaddr_reg_next[17]_i_1_n_0\
    );
\awaddr_reg_next[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(18),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(18),
      O => \awaddr_reg_next[18]_i_1_n_0\
    );
\awaddr_reg_next[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(19),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(19),
      O => \awaddr_reg_next[19]_i_1_n_0\
    );
\awaddr_reg_next[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(1),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(1),
      O => \awaddr_reg_next[1]_i_1_n_0\
    );
\awaddr_reg_next[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(20),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(20),
      O => \awaddr_reg_next[20]_i_1_n_0\
    );
\awaddr_reg_next[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(21),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(21),
      O => \awaddr_reg_next[21]_i_1_n_0\
    );
\awaddr_reg_next[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(22),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(22),
      O => \awaddr_reg_next[22]_i_1_n_0\
    );
\awaddr_reg_next[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(23),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(23),
      O => \awaddr_reg_next[23]_i_1_n_0\
    );
\awaddr_reg_next[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(24),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(24),
      O => \awaddr_reg_next[24]_i_1_n_0\
    );
\awaddr_reg_next[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(25),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(25),
      O => \awaddr_reg_next[25]_i_1_n_0\
    );
\awaddr_reg_next[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(26),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(26),
      O => \awaddr_reg_next[26]_i_1_n_0\
    );
\awaddr_reg_next[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(27),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(27),
      O => \awaddr_reg_next[27]_i_1_n_0\
    );
\awaddr_reg_next[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(28),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(28),
      O => \awaddr_reg_next[28]_i_1_n_0\
    );
\awaddr_reg_next[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(29),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(29),
      O => \awaddr_reg_next[29]_i_1_n_0\
    );
\awaddr_reg_next[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(2),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(2),
      O => \awaddr_reg_next[2]_i_1_n_0\
    );
\awaddr_reg_next[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(30),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(30),
      O => \awaddr_reg_next[30]_i_1_n_0\
    );
\awaddr_reg_next[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(31),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(31),
      O => \awaddr_reg_next[31]_i_1_n_0\
    );
\awaddr_reg_next[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(3),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(3),
      O => \awaddr_reg_next[3]_i_1_n_0\
    );
\awaddr_reg_next[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(4),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(4),
      O => \awaddr_reg_next[4]_i_1_n_0\
    );
\awaddr_reg_next[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(5),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(5),
      O => \awaddr_reg_next[5]_i_1_n_0\
    );
\awaddr_reg_next[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(6),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(6),
      O => \awaddr_reg_next[6]_i_1_n_0\
    );
\awaddr_reg_next[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(7),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(7),
      O => \awaddr_reg_next[7]_i_1_n_0\
    );
\awaddr_reg_next[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(8),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(8),
      O => \awaddr_reg_next[8]_i_1_n_0\
    );
\awaddr_reg_next[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_AWADDR(9),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => awaddr_reg(9),
      O => \awaddr_reg_next[9]_i_1_n_0\
    );
\awaddr_reg_next_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[0]_i_1_n_0\,
      Q => awaddr_reg_next(0),
      R => '0'
    );
\awaddr_reg_next_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[10]_i_1_n_0\,
      Q => awaddr_reg_next(10),
      R => '0'
    );
\awaddr_reg_next_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[11]_i_1_n_0\,
      Q => awaddr_reg_next(11),
      R => '0'
    );
\awaddr_reg_next_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[12]_i_1_n_0\,
      Q => awaddr_reg_next(12),
      R => '0'
    );
\awaddr_reg_next_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[13]_i_1_n_0\,
      Q => awaddr_reg_next(13),
      R => '0'
    );
\awaddr_reg_next_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[14]_i_1_n_0\,
      Q => awaddr_reg_next(14),
      R => '0'
    );
\awaddr_reg_next_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[15]_i_1_n_0\,
      Q => awaddr_reg_next(15),
      R => '0'
    );
\awaddr_reg_next_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[16]_i_1_n_0\,
      Q => awaddr_reg_next(16),
      R => '0'
    );
\awaddr_reg_next_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[17]_i_1_n_0\,
      Q => awaddr_reg_next(17),
      R => '0'
    );
\awaddr_reg_next_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[18]_i_1_n_0\,
      Q => awaddr_reg_next(18),
      R => '0'
    );
\awaddr_reg_next_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[19]_i_1_n_0\,
      Q => awaddr_reg_next(19),
      R => '0'
    );
\awaddr_reg_next_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[1]_i_1_n_0\,
      Q => awaddr_reg_next(1),
      R => '0'
    );
\awaddr_reg_next_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[20]_i_1_n_0\,
      Q => awaddr_reg_next(20),
      R => '0'
    );
\awaddr_reg_next_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[21]_i_1_n_0\,
      Q => awaddr_reg_next(21),
      R => '0'
    );
\awaddr_reg_next_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[22]_i_1_n_0\,
      Q => awaddr_reg_next(22),
      R => '0'
    );
\awaddr_reg_next_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[23]_i_1_n_0\,
      Q => awaddr_reg_next(23),
      R => '0'
    );
\awaddr_reg_next_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[24]_i_1_n_0\,
      Q => awaddr_reg_next(24),
      R => '0'
    );
\awaddr_reg_next_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[25]_i_1_n_0\,
      Q => awaddr_reg_next(25),
      R => '0'
    );
\awaddr_reg_next_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[26]_i_1_n_0\,
      Q => awaddr_reg_next(26),
      R => '0'
    );
\awaddr_reg_next_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[27]_i_1_n_0\,
      Q => awaddr_reg_next(27),
      R => '0'
    );
\awaddr_reg_next_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[28]_i_1_n_0\,
      Q => awaddr_reg_next(28),
      R => '0'
    );
\awaddr_reg_next_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[29]_i_1_n_0\,
      Q => awaddr_reg_next(29),
      R => '0'
    );
\awaddr_reg_next_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[2]_i_1_n_0\,
      Q => awaddr_reg_next(2),
      R => '0'
    );
\awaddr_reg_next_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[30]_i_1_n_0\,
      Q => awaddr_reg_next(30),
      R => '0'
    );
\awaddr_reg_next_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[31]_i_1_n_0\,
      Q => awaddr_reg_next(31),
      R => '0'
    );
\awaddr_reg_next_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[3]_i_1_n_0\,
      Q => awaddr_reg_next(3),
      R => '0'
    );
\awaddr_reg_next_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[4]_i_1_n_0\,
      Q => awaddr_reg_next(4),
      R => '0'
    );
\awaddr_reg_next_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[5]_i_1_n_0\,
      Q => awaddr_reg_next(5),
      R => '0'
    );
\awaddr_reg_next_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[6]_i_1_n_0\,
      Q => awaddr_reg_next(6),
      R => '0'
    );
\awaddr_reg_next_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[7]_i_1_n_0\,
      Q => awaddr_reg_next(7),
      R => '0'
    );
\awaddr_reg_next_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[8]_i_1_n_0\,
      Q => awaddr_reg_next(8),
      R => '0'
    );
\awaddr_reg_next_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \awaddr_reg_next[9]_i_1_n_0\,
      Q => awaddr_reg_next(9),
      R => '0'
    );
\awaddr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(0),
      Q => awaddr_reg(0),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(10),
      Q => awaddr_reg(10),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(11),
      Q => awaddr_reg(11),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(12),
      Q => awaddr_reg(12),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(13),
      Q => awaddr_reg(13),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(14),
      Q => awaddr_reg(14),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(15),
      Q => awaddr_reg(15),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(16),
      Q => awaddr_reg(16),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(17),
      Q => awaddr_reg(17),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(18),
      Q => awaddr_reg(18),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(19),
      Q => awaddr_reg(19),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(1),
      Q => awaddr_reg(1),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(20),
      Q => awaddr_reg(20),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(21),
      Q => awaddr_reg(21),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(22),
      Q => awaddr_reg(22),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(23),
      Q => awaddr_reg(23),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(24),
      Q => awaddr_reg(24),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(25),
      Q => awaddr_reg(25),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(26),
      Q => awaddr_reg(26),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(27),
      Q => awaddr_reg(27),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(28),
      Q => awaddr_reg(28),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(29),
      Q => awaddr_reg(29),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(2),
      Q => awaddr_reg(2),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(30),
      Q => awaddr_reg(30),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(31),
      Q => awaddr_reg(31),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(3),
      Q => awaddr_reg(3),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(4),
      Q => awaddr_reg(4),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(5),
      Q => awaddr_reg(5),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(6),
      Q => awaddr_reg(6),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(7),
      Q => awaddr_reg(7),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(8),
      Q => awaddr_reg(8),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => awaddr_reg_next(9),
      Q => awaddr_reg(9),
      R => \state[4]_i_1_n_0\
    );
\burst_lenth_next[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_BLEN(0),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => burst_lenth(0),
      O => burst_lenth_next(0)
    );
\burst_lenth_next[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_BLEN(1),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => burst_lenth(1),
      O => burst_lenth_next(1)
    );
\burst_lenth_next[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_BLEN(2),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => burst_lenth(2),
      O => burst_lenth_next(2)
    );
\burst_lenth_next[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_BLEN(3),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => burst_lenth(3),
      O => burst_lenth_next(3)
    );
\burst_lenth_next_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => burst_lenth_next(0),
      Q => \burst_lenth_next_reg_n_0_[0]\,
      R => '0'
    );
\burst_lenth_next_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => burst_lenth_next(1),
      Q => \burst_lenth_next_reg_n_0_[1]\,
      R => '0'
    );
\burst_lenth_next_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => burst_lenth_next(2),
      Q => \burst_lenth_next_reg_n_0_[2]\,
      R => '0'
    );
\burst_lenth_next_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => burst_lenth_next(3),
      Q => \burst_lenth_next_reg_n_0_[3]\,
      R => '0'
    );
\burst_lenth_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \burst_lenth_next_reg_n_0_[0]\,
      Q => burst_lenth(0),
      R => \state[4]_i_1_n_0\
    );
\burst_lenth_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \burst_lenth_next_reg_n_0_[1]\,
      Q => burst_lenth(1),
      R => \state[4]_i_1_n_0\
    );
\burst_lenth_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \burst_lenth_next_reg_n_0_[2]\,
      Q => burst_lenth(2),
      R => \state[4]_i_1_n_0\
    );
\burst_lenth_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \burst_lenth_next_reg_n_0_[3]\,
      Q => burst_lenth(3),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_next[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(0),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(0),
      O => \read_data_reg_next[0]_i_1_n_0\
    );
\read_data_reg_next[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(10),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(10),
      O => \read_data_reg_next[10]_i_1_n_0\
    );
\read_data_reg_next[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(11),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(11),
      O => \read_data_reg_next[11]_i_1_n_0\
    );
\read_data_reg_next[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(12),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(12),
      O => \read_data_reg_next[12]_i_1_n_0\
    );
\read_data_reg_next[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(13),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(13),
      O => \read_data_reg_next[13]_i_1_n_0\
    );
\read_data_reg_next[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(14),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(14),
      O => \read_data_reg_next[14]_i_1_n_0\
    );
\read_data_reg_next[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(15),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(15),
      O => \read_data_reg_next[15]_i_1_n_0\
    );
\read_data_reg_next[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(16),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(16),
      O => \read_data_reg_next[16]_i_1_n_0\
    );
\read_data_reg_next[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(17),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(17),
      O => \read_data_reg_next[17]_i_1_n_0\
    );
\read_data_reg_next[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(18),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(18),
      O => \read_data_reg_next[18]_i_1_n_0\
    );
\read_data_reg_next[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(19),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(19),
      O => \read_data_reg_next[19]_i_1_n_0\
    );
\read_data_reg_next[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(1),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(1),
      O => \read_data_reg_next[1]_i_1_n_0\
    );
\read_data_reg_next[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(20),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(20),
      O => \read_data_reg_next[20]_i_1_n_0\
    );
\read_data_reg_next[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(21),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(21),
      O => \read_data_reg_next[21]_i_1_n_0\
    );
\read_data_reg_next[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(22),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(22),
      O => \read_data_reg_next[22]_i_1_n_0\
    );
\read_data_reg_next[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(23),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(23),
      O => \read_data_reg_next[23]_i_1_n_0\
    );
\read_data_reg_next[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(24),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(24),
      O => \read_data_reg_next[24]_i_1_n_0\
    );
\read_data_reg_next[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(25),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(25),
      O => \read_data_reg_next[25]_i_1_n_0\
    );
\read_data_reg_next[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(26),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(26),
      O => \read_data_reg_next[26]_i_1_n_0\
    );
\read_data_reg_next[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(27),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(27),
      O => \read_data_reg_next[27]_i_1_n_0\
    );
\read_data_reg_next[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(28),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(28),
      O => \read_data_reg_next[28]_i_1_n_0\
    );
\read_data_reg_next[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(29),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(29),
      O => \read_data_reg_next[29]_i_1_n_0\
    );
\read_data_reg_next[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(2),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(2),
      O => \read_data_reg_next[2]_i_1_n_0\
    );
\read_data_reg_next[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(30),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(30),
      O => \read_data_reg_next[30]_i_1_n_0\
    );
\read_data_reg_next[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(31),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(31),
      O => \read_data_reg_next[31]_i_1_n_0\
    );
\read_data_reg_next[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(3),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(3),
      O => \read_data_reg_next[3]_i_1_n_0\
    );
\read_data_reg_next[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(4),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(4),
      O => \read_data_reg_next[4]_i_1_n_0\
    );
\read_data_reg_next[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(5),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(5),
      O => \read_data_reg_next[5]_i_1_n_0\
    );
\read_data_reg_next[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(6),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(6),
      O => \read_data_reg_next[6]_i_1_n_0\
    );
\read_data_reg_next[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(7),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(7),
      O => \read_data_reg_next[7]_i_1_n_0\
    );
\read_data_reg_next[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(8),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(8),
      O => \read_data_reg_next[8]_i_1_n_0\
    );
\read_data_reg_next[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_RDATA(9),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => read_data_reg(9),
      O => \read_data_reg_next[9]_i_1_n_0\
    );
\read_data_reg_next_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[0]_i_1_n_0\,
      Q => read_data_reg_next(0),
      R => '0'
    );
\read_data_reg_next_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[10]_i_1_n_0\,
      Q => read_data_reg_next(10),
      R => '0'
    );
\read_data_reg_next_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[11]_i_1_n_0\,
      Q => read_data_reg_next(11),
      R => '0'
    );
\read_data_reg_next_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[12]_i_1_n_0\,
      Q => read_data_reg_next(12),
      R => '0'
    );
\read_data_reg_next_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[13]_i_1_n_0\,
      Q => read_data_reg_next(13),
      R => '0'
    );
\read_data_reg_next_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[14]_i_1_n_0\,
      Q => read_data_reg_next(14),
      R => '0'
    );
\read_data_reg_next_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[15]_i_1_n_0\,
      Q => read_data_reg_next(15),
      R => '0'
    );
\read_data_reg_next_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[16]_i_1_n_0\,
      Q => read_data_reg_next(16),
      R => '0'
    );
\read_data_reg_next_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[17]_i_1_n_0\,
      Q => read_data_reg_next(17),
      R => '0'
    );
\read_data_reg_next_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[18]_i_1_n_0\,
      Q => read_data_reg_next(18),
      R => '0'
    );
\read_data_reg_next_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[19]_i_1_n_0\,
      Q => read_data_reg_next(19),
      R => '0'
    );
\read_data_reg_next_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[1]_i_1_n_0\,
      Q => read_data_reg_next(1),
      R => '0'
    );
\read_data_reg_next_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[20]_i_1_n_0\,
      Q => read_data_reg_next(20),
      R => '0'
    );
\read_data_reg_next_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[21]_i_1_n_0\,
      Q => read_data_reg_next(21),
      R => '0'
    );
\read_data_reg_next_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[22]_i_1_n_0\,
      Q => read_data_reg_next(22),
      R => '0'
    );
\read_data_reg_next_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[23]_i_1_n_0\,
      Q => read_data_reg_next(23),
      R => '0'
    );
\read_data_reg_next_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[24]_i_1_n_0\,
      Q => read_data_reg_next(24),
      R => '0'
    );
\read_data_reg_next_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[25]_i_1_n_0\,
      Q => read_data_reg_next(25),
      R => '0'
    );
\read_data_reg_next_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[26]_i_1_n_0\,
      Q => read_data_reg_next(26),
      R => '0'
    );
\read_data_reg_next_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[27]_i_1_n_0\,
      Q => read_data_reg_next(27),
      R => '0'
    );
\read_data_reg_next_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[28]_i_1_n_0\,
      Q => read_data_reg_next(28),
      R => '0'
    );
\read_data_reg_next_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[29]_i_1_n_0\,
      Q => read_data_reg_next(29),
      R => '0'
    );
\read_data_reg_next_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[2]_i_1_n_0\,
      Q => read_data_reg_next(2),
      R => '0'
    );
\read_data_reg_next_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[30]_i_1_n_0\,
      Q => read_data_reg_next(30),
      R => '0'
    );
\read_data_reg_next_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[31]_i_1_n_0\,
      Q => read_data_reg_next(31),
      R => '0'
    );
\read_data_reg_next_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[3]_i_1_n_0\,
      Q => read_data_reg_next(3),
      R => '0'
    );
\read_data_reg_next_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[4]_i_1_n_0\,
      Q => read_data_reg_next(4),
      R => '0'
    );
\read_data_reg_next_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[5]_i_1_n_0\,
      Q => read_data_reg_next(5),
      R => '0'
    );
\read_data_reg_next_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[6]_i_1_n_0\,
      Q => read_data_reg_next(6),
      R => '0'
    );
\read_data_reg_next_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[7]_i_1_n_0\,
      Q => read_data_reg_next(7),
      R => '0'
    );
\read_data_reg_next_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[8]_i_1_n_0\,
      Q => read_data_reg_next(8),
      R => '0'
    );
\read_data_reg_next_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \read_data_reg_next[9]_i_1_n_0\,
      Q => read_data_reg_next(9),
      R => '0'
    );
\read_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(0),
      Q => read_data_reg(0),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(10),
      Q => read_data_reg(10),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(11),
      Q => read_data_reg(11),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(12),
      Q => read_data_reg(12),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(13),
      Q => read_data_reg(13),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(14),
      Q => read_data_reg(14),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(15),
      Q => read_data_reg(15),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(16),
      Q => read_data_reg(16),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(17),
      Q => read_data_reg(17),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(18),
      Q => read_data_reg(18),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(19),
      Q => read_data_reg(19),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(1),
      Q => read_data_reg(1),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(20),
      Q => read_data_reg(20),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(21),
      Q => read_data_reg(21),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(22),
      Q => read_data_reg(22),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(23),
      Q => read_data_reg(23),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(24),
      Q => read_data_reg(24),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(25),
      Q => read_data_reg(25),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(26),
      Q => read_data_reg(26),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(27),
      Q => read_data_reg(27),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(28),
      Q => read_data_reg(28),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(29),
      Q => read_data_reg(29),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(2),
      Q => read_data_reg(2),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(30),
      Q => read_data_reg(30),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(31),
      Q => read_data_reg(31),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(3),
      Q => read_data_reg(3),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(4),
      Q => read_data_reg(4),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(5),
      Q => read_data_reg(5),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(6),
      Q => read_data_reg(6),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(7),
      Q => read_data_reg(7),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(8),
      Q => read_data_reg(8),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => read_data_reg_next(9),
      Q => read_data_reg(9),
      R => \state[4]_i_1_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => M_ARESET_N,
      O => \state[4]_i_1_n_0\
    );
state_next: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[4]\,
      O => state_next_n_0
    );
\state_next[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCF4040CFFF4040"
    )
        port map (
      I0 => \state_next[0]_i_2_n_0\,
      I1 => \state_next[0]_i_3_n_0\,
      I2 => state_next_n_0,
      I3 => U_WVALID,
      I4 => \state_reg_n_0_[0]\,
      I5 => U_RVALID,
      O => p_0_in(0)
    );
\state_next[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => S_RVALID,
      I1 => \state_reg_n_0_[3]\,
      I2 => S_WREADY,
      I3 => \state_reg_n_0_[4]\,
      O => \state_next[0]_i_2_n_0\
    );
\state_next[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF44F4"
    )
        port map (
      I0 => S_AWREADY,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => S_ARREADY,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[4]\,
      O => \state_next[0]_i_3_n_0\
    );
\state_next[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDF0F00FFFF0000"
    )
        port map (
      I0 => S_ARREADY,
      I1 => \state_next[1]_i_2_n_0\,
      I2 => \state_next[1]_i_3_n_0\,
      I3 => U_RVALID,
      I4 => \state_reg_n_0_[1]\,
      I5 => state_next_n_0,
      O => p_0_in(1)
    );
\state_next[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => S_RVALID,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => S_AWREADY,
      I4 => \state_reg_n_0_[4]\,
      I5 => S_WREADY,
      O => \state_next[1]_i_2_n_0\
    );
\state_next[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => U_WVALID,
      I1 => \state_reg_n_0_[0]\,
      O => \state_next[1]_i_3_n_0\
    );
\state_next[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFDF0000"
    )
        port map (
      I0 => state_next_n_0,
      I1 => \state_next[2]_i_2_n_0\,
      I2 => S_AWREADY,
      I3 => \state_next[2]_i_3_n_0\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_next[2]_i_4_n_0\,
      O => p_0_in(2)
    );
\state_next[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => S_WREADY,
      O => \state_next[2]_i_2_n_0\
    );
\state_next[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => S_ARREADY,
      I1 => \state_reg_n_0_[1]\,
      I2 => S_RVALID,
      I3 => \state_reg_n_0_[3]\,
      O => \state_next[2]_i_3_n_0\
    );
\state_next[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AA8080"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => U_WVALID,
      I2 => state_next_n_0,
      I3 => U_RVALID,
      I4 => \state_reg_n_0_[2]\,
      O => \state_next[2]_i_4_n_0\
    );
\state_next[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F0F0F800F0F0"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => S_ARREADY,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_next[3]_i_2_n_0\,
      I4 => state_next_n_0,
      I5 => \state_next[4]_i_2_n_0\,
      O => p_0_in(3)
    );
\state_next[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22F2FFFF"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => S_AWREADY,
      I2 => \state_reg_n_0_[4]\,
      I3 => S_WREADY,
      I4 => S_RVALID,
      I5 => \state_reg_n_0_[1]\,
      O => \state_next[3]_i_2_n_0\
    );
\state_next[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F800F0F0F0F0"
    )
        port map (
      I0 => S_AWREADY,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_next[4]_i_2_n_0\,
      I4 => \state_next[4]_i_3_n_0\,
      I5 => state_next_n_0,
      O => p_0_in(4)
    );
\state_next[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => U_RVALID,
      I1 => \state_reg_n_0_[0]\,
      I2 => U_WVALID,
      O => \state_next[4]_i_2_n_0\
    );
\state_next[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22F2FFFF"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => S_RVALID,
      I2 => \state_reg_n_0_[1]\,
      I3 => S_ARREADY,
      I4 => S_WREADY,
      I5 => \state_reg_n_0_[2]\,
      O => \state_next[4]_i_3_n_0\
    );
\state_next_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => p_0_in(0),
      Q => \^state_next\(0),
      R => '0'
    );
\state_next_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => p_0_in(1),
      Q => \^state_next\(1),
      R => '0'
    );
\state_next_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => p_0_in(2),
      Q => \^state_next\(2),
      R => '0'
    );
\state_next_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => p_0_in(3),
      Q => \^state_next\(3),
      R => '0'
    );
\state_next_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => p_0_in(4),
      Q => \^state_next\(4),
      R => '0'
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \^state_next\(0),
      Q => \state_reg_n_0_[0]\,
      S => \state[4]_i_1_n_0\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \^state_next\(1),
      Q => \state_reg_n_0_[1]\,
      R => \state[4]_i_1_n_0\
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \^state_next\(2),
      Q => \state_reg_n_0_[2]\,
      R => \state[4]_i_1_n_0\
    );
\state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \^state_next\(3),
      Q => \state_reg_n_0_[3]\,
      R => \state[4]_i_1_n_0\
    );
\state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \^state_next\(4),
      Q => \state_reg_n_0_[4]\,
      R => \state[4]_i_1_n_0\
    );
\strb_reg_next[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_STRB(0),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => strb_reg(0),
      O => strb_reg_next(0)
    );
\strb_reg_next[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_STRB(1),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => strb_reg(1),
      O => strb_reg_next(1)
    );
\strb_reg_next[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_STRB(2),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => strb_reg(2),
      O => strb_reg_next(2)
    );
\strb_reg_next[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_STRB(3),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => strb_reg(3),
      O => strb_reg_next(3)
    );
\strb_reg_next[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[4]\,
      O => \strb_reg_next[3]_i_2_n_0\
    );
\strb_reg_next_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => strb_reg_next(0),
      Q => \strb_reg_next_reg_n_0_[0]\,
      R => '0'
    );
\strb_reg_next_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => strb_reg_next(1),
      Q => \strb_reg_next_reg_n_0_[1]\,
      R => '0'
    );
\strb_reg_next_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => strb_reg_next(2),
      Q => \strb_reg_next_reg_n_0_[2]\,
      R => '0'
    );
\strb_reg_next_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => strb_reg_next(3),
      Q => \strb_reg_next_reg_n_0_[3]\,
      R => '0'
    );
\strb_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \strb_reg_next_reg_n_0_[0]\,
      Q => strb_reg(0),
      R => \state[4]_i_1_n_0\
    );
\strb_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \strb_reg_next_reg_n_0_[1]\,
      Q => strb_reg(1),
      R => \state[4]_i_1_n_0\
    );
\strb_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \strb_reg_next_reg_n_0_[2]\,
      Q => strb_reg(2),
      R => \state[4]_i_1_n_0\
    );
\strb_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \strb_reg_next_reg_n_0_[3]\,
      Q => strb_reg(3),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_next[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(0),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(0),
      O => \write_data_reg_next[0]_i_1_n_0\
    );
\write_data_reg_next[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(10),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(10),
      O => \write_data_reg_next[10]_i_1_n_0\
    );
\write_data_reg_next[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(11),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(11),
      O => \write_data_reg_next[11]_i_1_n_0\
    );
\write_data_reg_next[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(12),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(12),
      O => \write_data_reg_next[12]_i_1_n_0\
    );
\write_data_reg_next[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(13),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(13),
      O => \write_data_reg_next[13]_i_1_n_0\
    );
\write_data_reg_next[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(14),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(14),
      O => \write_data_reg_next[14]_i_1_n_0\
    );
\write_data_reg_next[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(15),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(15),
      O => \write_data_reg_next[15]_i_1_n_0\
    );
\write_data_reg_next[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(16),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(16),
      O => \write_data_reg_next[16]_i_1_n_0\
    );
\write_data_reg_next[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(17),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(17),
      O => \write_data_reg_next[17]_i_1_n_0\
    );
\write_data_reg_next[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(18),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(18),
      O => \write_data_reg_next[18]_i_1_n_0\
    );
\write_data_reg_next[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(19),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(19),
      O => \write_data_reg_next[19]_i_1_n_0\
    );
\write_data_reg_next[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(1),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(1),
      O => \write_data_reg_next[1]_i_1_n_0\
    );
\write_data_reg_next[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(20),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(20),
      O => \write_data_reg_next[20]_i_1_n_0\
    );
\write_data_reg_next[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(21),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(21),
      O => \write_data_reg_next[21]_i_1_n_0\
    );
\write_data_reg_next[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(22),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(22),
      O => \write_data_reg_next[22]_i_1_n_0\
    );
\write_data_reg_next[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(23),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(23),
      O => \write_data_reg_next[23]_i_1_n_0\
    );
\write_data_reg_next[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(24),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(24),
      O => \write_data_reg_next[24]_i_1_n_0\
    );
\write_data_reg_next[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(25),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(25),
      O => \write_data_reg_next[25]_i_1_n_0\
    );
\write_data_reg_next[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(26),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(26),
      O => \write_data_reg_next[26]_i_1_n_0\
    );
\write_data_reg_next[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(27),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(27),
      O => \write_data_reg_next[27]_i_1_n_0\
    );
\write_data_reg_next[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(28),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(28),
      O => \write_data_reg_next[28]_i_1_n_0\
    );
\write_data_reg_next[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(29),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(29),
      O => \write_data_reg_next[29]_i_1_n_0\
    );
\write_data_reg_next[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(2),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(2),
      O => \write_data_reg_next[2]_i_1_n_0\
    );
\write_data_reg_next[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(30),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(30),
      O => \write_data_reg_next[30]_i_1_n_0\
    );
\write_data_reg_next[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(31),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(31),
      O => \write_data_reg_next[31]_i_1_n_0\
    );
\write_data_reg_next[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(3),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(3),
      O => \write_data_reg_next[3]_i_1_n_0\
    );
\write_data_reg_next[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(4),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(4),
      O => \write_data_reg_next[4]_i_1_n_0\
    );
\write_data_reg_next[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(5),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(5),
      O => \write_data_reg_next[5]_i_1_n_0\
    );
\write_data_reg_next[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(6),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(6),
      O => \write_data_reg_next[6]_i_1_n_0\
    );
\write_data_reg_next[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(7),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(7),
      O => \write_data_reg_next[7]_i_1_n_0\
    );
\write_data_reg_next[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(8),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(8),
      O => \write_data_reg_next[8]_i_1_n_0\
    );
\write_data_reg_next[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => U_WDATA(9),
      I1 => \strb_reg_next[3]_i_2_n_0\,
      I2 => write_data_reg(9),
      O => \write_data_reg_next[9]_i_1_n_0\
    );
\write_data_reg_next_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[0]_i_1_n_0\,
      Q => write_data_reg_next(0),
      R => '0'
    );
\write_data_reg_next_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[10]_i_1_n_0\,
      Q => write_data_reg_next(10),
      R => '0'
    );
\write_data_reg_next_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[11]_i_1_n_0\,
      Q => write_data_reg_next(11),
      R => '0'
    );
\write_data_reg_next_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[12]_i_1_n_0\,
      Q => write_data_reg_next(12),
      R => '0'
    );
\write_data_reg_next_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[13]_i_1_n_0\,
      Q => write_data_reg_next(13),
      R => '0'
    );
\write_data_reg_next_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[14]_i_1_n_0\,
      Q => write_data_reg_next(14),
      R => '0'
    );
\write_data_reg_next_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[15]_i_1_n_0\,
      Q => write_data_reg_next(15),
      R => '0'
    );
\write_data_reg_next_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[16]_i_1_n_0\,
      Q => write_data_reg_next(16),
      R => '0'
    );
\write_data_reg_next_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[17]_i_1_n_0\,
      Q => write_data_reg_next(17),
      R => '0'
    );
\write_data_reg_next_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[18]_i_1_n_0\,
      Q => write_data_reg_next(18),
      R => '0'
    );
\write_data_reg_next_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[19]_i_1_n_0\,
      Q => write_data_reg_next(19),
      R => '0'
    );
\write_data_reg_next_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[1]_i_1_n_0\,
      Q => write_data_reg_next(1),
      R => '0'
    );
\write_data_reg_next_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[20]_i_1_n_0\,
      Q => write_data_reg_next(20),
      R => '0'
    );
\write_data_reg_next_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[21]_i_1_n_0\,
      Q => write_data_reg_next(21),
      R => '0'
    );
\write_data_reg_next_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[22]_i_1_n_0\,
      Q => write_data_reg_next(22),
      R => '0'
    );
\write_data_reg_next_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[23]_i_1_n_0\,
      Q => write_data_reg_next(23),
      R => '0'
    );
\write_data_reg_next_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[24]_i_1_n_0\,
      Q => write_data_reg_next(24),
      R => '0'
    );
\write_data_reg_next_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[25]_i_1_n_0\,
      Q => write_data_reg_next(25),
      R => '0'
    );
\write_data_reg_next_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[26]_i_1_n_0\,
      Q => write_data_reg_next(26),
      R => '0'
    );
\write_data_reg_next_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[27]_i_1_n_0\,
      Q => write_data_reg_next(27),
      R => '0'
    );
\write_data_reg_next_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[28]_i_1_n_0\,
      Q => write_data_reg_next(28),
      R => '0'
    );
\write_data_reg_next_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[29]_i_1_n_0\,
      Q => write_data_reg_next(29),
      R => '0'
    );
\write_data_reg_next_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[2]_i_1_n_0\,
      Q => write_data_reg_next(2),
      R => '0'
    );
\write_data_reg_next_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[30]_i_1_n_0\,
      Q => write_data_reg_next(30),
      R => '0'
    );
\write_data_reg_next_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[31]_i_1_n_0\,
      Q => write_data_reg_next(31),
      R => '0'
    );
\write_data_reg_next_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[3]_i_1_n_0\,
      Q => write_data_reg_next(3),
      R => '0'
    );
\write_data_reg_next_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[4]_i_1_n_0\,
      Q => write_data_reg_next(4),
      R => '0'
    );
\write_data_reg_next_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[5]_i_1_n_0\,
      Q => write_data_reg_next(5),
      R => '0'
    );
\write_data_reg_next_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[6]_i_1_n_0\,
      Q => write_data_reg_next(6),
      R => '0'
    );
\write_data_reg_next_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[7]_i_1_n_0\,
      Q => write_data_reg_next(7),
      R => '0'
    );
\write_data_reg_next_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[8]_i_1_n_0\,
      Q => write_data_reg_next(8),
      R => '0'
    );
\write_data_reg_next_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => \write_data_reg_next[9]_i_1_n_0\,
      Q => write_data_reg_next(9),
      R => '0'
    );
\write_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(0),
      Q => write_data_reg(0),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(10),
      Q => write_data_reg(10),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(11),
      Q => write_data_reg(11),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(12),
      Q => write_data_reg(12),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(13),
      Q => write_data_reg(13),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(14),
      Q => write_data_reg(14),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(15),
      Q => write_data_reg(15),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(16),
      Q => write_data_reg(16),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(17),
      Q => write_data_reg(17),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(18),
      Q => write_data_reg(18),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(19),
      Q => write_data_reg(19),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(1),
      Q => write_data_reg(1),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(20),
      Q => write_data_reg(20),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(21),
      Q => write_data_reg(21),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(22),
      Q => write_data_reg(22),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(23),
      Q => write_data_reg(23),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(24),
      Q => write_data_reg(24),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(25),
      Q => write_data_reg(25),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(26),
      Q => write_data_reg(26),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(27),
      Q => write_data_reg(27),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(28),
      Q => write_data_reg(28),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(29),
      Q => write_data_reg(29),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(2),
      Q => write_data_reg(2),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(30),
      Q => write_data_reg(30),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(31),
      Q => write_data_reg(31),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(3),
      Q => write_data_reg(3),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(4),
      Q => write_data_reg(4),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(5),
      Q => write_data_reg(5),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(6),
      Q => write_data_reg(6),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(7),
      Q => write_data_reg(7),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(8),
      Q => write_data_reg(8),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => write_data_reg_next(9),
      Q => write_data_reg(9),
      R => \state[4]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_test_1_axi_master_fsm_0_0 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESET_N : in STD_LOGIC;
    S_AWREADY : in STD_LOGIC;
    M_AWVALID : out STD_LOGIC;
    M_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_WREADY : in STD_LOGIC;
    M_WVALID : out STD_LOGIC;
    M_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_BVALID : in STD_LOGIC;
    M_BREADY : out STD_LOGIC;
    S_ARREADY : in STD_LOGIC;
    M_ARVALID : out STD_LOGIC;
    M_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_RVALID : in STD_LOGIC;
    M_BLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_RREADY : out STD_LOGIC;
    U_WVALID : in STD_LOGIC;
    U_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    U_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    U_STRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    U_RVALID : in STD_LOGIC;
    U_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    U_BLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    U_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_test_1_axi_master_fsm_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_test_1_axi_master_fsm_0_0 : entity is "axi_test_1_axi_master_fsm_0_0,axi_master_fsm,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axi_test_1_axi_master_fsm_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of axi_test_1_axi_master_fsm_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_test_1_axi_master_fsm_0_0 : entity is "axi_master_fsm,Vivado 2019.2";
end axi_test_1_axi_master_fsm_0_0;

architecture STRUCTURE of axi_test_1_axi_master_fsm_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_ACLK : signal is "xilinx.com:signal:clock:1.0 M_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of M_ACLK : signal is "XIL_INTERFACENAME M_ACLK, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  M_BREADY <= 'Z';
inst: entity work.axi_test_1_axi_master_fsm_0_0_axi_master_fsm
     port map (
      M_ACLK => M_ACLK,
      M_ARADDR(31 downto 0) => M_ARADDR(31 downto 0),
      M_ARESET_N => M_ARESET_N,
      M_ARVALID => M_ARVALID,
      M_AWADDR(31 downto 0) => M_AWADDR(31 downto 0),
      M_AWVALID => M_AWVALID,
      M_BLEN(3 downto 0) => M_BLEN(3 downto 0),
      M_RREADY => M_RREADY,
      M_WDATA(31 downto 0) => M_WDATA(31 downto 0),
      M_WSTRB(3 downto 0) => M_WSTRB(3 downto 0),
      M_WVALID => M_WVALID,
      S_ARREADY => S_ARREADY,
      S_AWREADY => S_AWREADY,
      S_RDATA(31 downto 0) => S_RDATA(31 downto 0),
      S_RVALID => S_RVALID,
      S_WREADY => S_WREADY,
      U_ARADDR(31 downto 0) => U_ARADDR(31 downto 0),
      U_AWADDR(31 downto 0) => U_AWADDR(31 downto 0),
      U_BLEN(3 downto 0) => U_BLEN(3 downto 0),
      U_RDATA(31 downto 0) => U_RDATA(31 downto 0),
      U_RVALID => U_RVALID,
      U_STRB(3 downto 0) => U_STRB(3 downto 0),
      U_WDATA(31 downto 0) => U_WDATA(31 downto 0),
      U_WVALID => U_WVALID
    );
end STRUCTURE;
