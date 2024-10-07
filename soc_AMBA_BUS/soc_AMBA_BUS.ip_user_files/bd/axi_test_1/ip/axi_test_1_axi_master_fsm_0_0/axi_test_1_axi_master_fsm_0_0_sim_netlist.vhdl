-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Oct  7 20:23:58 2024
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
    U_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_BLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_ACLK : in STD_LOGIC;
    U_RVALID : in STD_LOGIC;
    U_BLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    U_WVALID : in STD_LOGIC;
    U_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    U_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    U_STRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    U_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AWREADY : in STD_LOGIC;
    S_RVALID : in STD_LOGIC;
    S_WREADY : in STD_LOGIC;
    S_ARREADY : in STD_LOGIC;
    M_ARESET_N : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_test_1_axi_master_fsm_0_0_axi_master_fsm : entity is "axi_master_fsm";
end axi_test_1_axi_master_fsm_0_0_axi_master_fsm;

architecture STRUCTURE of axi_test_1_axi_master_fsm_0_0_axi_master_fsm is
  signal \M_ARADDR_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \M_AWADDR_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \M_BLEN[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \U_RDATA_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal araddr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal awaddr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal burst_length : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal read_data_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_2_n_0\ : STD_LOGIC;
  signal \state[4]_i_3_n_0\ : STD_LOGIC;
  signal \state[4]_i_4_n_0\ : STD_LOGIC;
  signal \state[4]_i_5_n_0\ : STD_LOGIC;
  signal state_next : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal strb_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal write_data_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_ARADDR_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_AWADDR_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \M_BLEN[3]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WDATA_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WSTRB_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WSTRB_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WSTRB_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \M_WSTRB_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \U_RDATA_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[4]_i_4\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \state_reg[0]\ : label is "IDLE:000000001,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,STATE_AWADDR:000000100,STATE_ARADDR:000000010";
  attribute FSM_ENCODED_STATES of \state_reg[1]\ : label is "IDLE:000000001,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,STATE_AWADDR:000000100,STATE_ARADDR:000000010";
  attribute FSM_ENCODED_STATES of \state_reg[2]\ : label is "IDLE:000000001,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,STATE_AWADDR:000000100,STATE_ARADDR:000000010";
  attribute FSM_ENCODED_STATES of \state_reg[3]\ : label is "IDLE:000000001,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,STATE_AWADDR:000000100,STATE_ARADDR:000000010";
  attribute FSM_ENCODED_STATES of \state_reg[4]\ : label is "IDLE:000000001,STATE_READ_READY:000001000,STATE_WRITE_READY:000010000,STATE_AWADDR:000000100,STATE_ARADDR:000000010";
begin
\M_ARADDR_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(0),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(0)
    );
\M_ARADDR_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(10),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(10)
    );
\M_ARADDR_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(11),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(11)
    );
\M_ARADDR_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(12),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(12)
    );
\M_ARADDR_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(13),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(13)
    );
\M_ARADDR_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(14),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(14)
    );
\M_ARADDR_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(15),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(15)
    );
\M_ARADDR_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(16),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(16)
    );
\M_ARADDR_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(17),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(17)
    );
\M_ARADDR_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(18),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(18)
    );
\M_ARADDR_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(19),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(19)
    );
\M_ARADDR_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(1),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(1)
    );
\M_ARADDR_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(20),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(20)
    );
\M_ARADDR_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(21),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(21)
    );
\M_ARADDR_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(22),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(22)
    );
\M_ARADDR_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(23),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(23)
    );
\M_ARADDR_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(24),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(24)
    );
\M_ARADDR_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(25),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(25)
    );
\M_ARADDR_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(26),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(26)
    );
\M_ARADDR_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(27),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(27)
    );
\M_ARADDR_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(28),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(28)
    );
\M_ARADDR_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(29),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(29)
    );
\M_ARADDR_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(2),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(2)
    );
\M_ARADDR_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(30),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(30)
    );
\M_ARADDR_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(31),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(31)
    );
\M_ARADDR_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      I4 => U_RVALID,
      I5 => state(4),
      O => \M_ARADDR_reg[31]_i_1_n_0\
    );
\M_ARADDR_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(3),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(3)
    );
\M_ARADDR_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(4),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(4)
    );
\M_ARADDR_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(5),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(5)
    );
\M_ARADDR_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(6),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(6)
    );
\M_ARADDR_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(7),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(7)
    );
\M_ARADDR_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(8),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(8)
    );
\M_ARADDR_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => araddr_reg(9),
      G => \M_ARADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_ARADDR(9)
    );
\M_AWADDR_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(0),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(0)
    );
\M_AWADDR_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(10),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(10)
    );
\M_AWADDR_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(11),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(11)
    );
\M_AWADDR_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(12),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(12)
    );
\M_AWADDR_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(13),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(13)
    );
\M_AWADDR_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(14),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(14)
    );
\M_AWADDR_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(15),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(15)
    );
\M_AWADDR_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(16),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(16)
    );
\M_AWADDR_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(17),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(17)
    );
\M_AWADDR_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(18),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(18)
    );
\M_AWADDR_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(19),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(19)
    );
\M_AWADDR_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(1),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(1)
    );
\M_AWADDR_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(20),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(20)
    );
\M_AWADDR_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(21),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(21)
    );
\M_AWADDR_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(22),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(22)
    );
\M_AWADDR_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(23),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(23)
    );
\M_AWADDR_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(24),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(24)
    );
\M_AWADDR_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(25),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(25)
    );
\M_AWADDR_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(26),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(26)
    );
\M_AWADDR_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(27),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(27)
    );
\M_AWADDR_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(28),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(28)
    );
\M_AWADDR_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(29),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(29)
    );
\M_AWADDR_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(2),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(2)
    );
\M_AWADDR_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(30),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(30)
    );
\M_AWADDR_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(31),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(31)
    );
\M_AWADDR_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => state(1),
      I1 => \M_BLEN[3]_INST_0_i_1_n_0\,
      I2 => state(0),
      I3 => U_WVALID,
      I4 => U_RVALID,
      I5 => state(4),
      O => \M_AWADDR_reg[31]_i_1_n_0\
    );
\M_AWADDR_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(3),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(3)
    );
\M_AWADDR_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(4),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(4)
    );
\M_AWADDR_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(5),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(5)
    );
\M_AWADDR_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(6),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(6)
    );
\M_AWADDR_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(7),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(7)
    );
\M_AWADDR_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(8),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(8)
    );
\M_AWADDR_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => awaddr_reg(9),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_AWADDR(9)
    );
\M_BLEN[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => state(1),
      I1 => \M_BLEN[3]_INST_0_i_1_n_0\,
      I2 => state(0),
      I3 => U_RVALID,
      I4 => burst_length(0),
      I5 => state(4),
      O => M_BLEN(0)
    );
\M_BLEN[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => state(1),
      I1 => \M_BLEN[3]_INST_0_i_1_n_0\,
      I2 => state(0),
      I3 => U_RVALID,
      I4 => burst_length(1),
      I5 => state(4),
      O => M_BLEN(1)
    );
\M_BLEN[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => state(1),
      I1 => \M_BLEN[3]_INST_0_i_1_n_0\,
      I2 => state(0),
      I3 => U_RVALID,
      I4 => burst_length(2),
      I5 => state(4),
      O => M_BLEN(2)
    );
\M_BLEN[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => state(1),
      I1 => \M_BLEN[3]_INST_0_i_1_n_0\,
      I2 => state(0),
      I3 => U_RVALID,
      I4 => burst_length(3),
      I5 => state(4),
      O => M_BLEN(3)
    );
\M_BLEN[3]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      O => \M_BLEN[3]_INST_0_i_1_n_0\
    );
\M_WDATA_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(0),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(0)
    );
\M_WDATA_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(10),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(10)
    );
\M_WDATA_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(11),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(11)
    );
\M_WDATA_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(12),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(12)
    );
\M_WDATA_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(13),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(13)
    );
\M_WDATA_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(14),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(14)
    );
\M_WDATA_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(15),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(15)
    );
\M_WDATA_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(16),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(16)
    );
\M_WDATA_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(17),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(17)
    );
\M_WDATA_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(18),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(18)
    );
\M_WDATA_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(19),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(19)
    );
\M_WDATA_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(1),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(1)
    );
\M_WDATA_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(20),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(20)
    );
\M_WDATA_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(21),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(21)
    );
\M_WDATA_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(22),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(22)
    );
\M_WDATA_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(23),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(23)
    );
\M_WDATA_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(24),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(24)
    );
\M_WDATA_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(25),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(25)
    );
\M_WDATA_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(26),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(26)
    );
\M_WDATA_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(27),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(27)
    );
\M_WDATA_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(28),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(28)
    );
\M_WDATA_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(29),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(29)
    );
\M_WDATA_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(2),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(2)
    );
\M_WDATA_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(30),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(30)
    );
\M_WDATA_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(31),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(31)
    );
\M_WDATA_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(3),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(3)
    );
\M_WDATA_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(4),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(4)
    );
\M_WDATA_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(5),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(5)
    );
\M_WDATA_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(6),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(6)
    );
\M_WDATA_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(7),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(7)
    );
\M_WDATA_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(8),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(8)
    );
\M_WDATA_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_data_reg(9),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WDATA(9)
    );
\M_WSTRB_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => strb_reg(0),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WSTRB(0)
    );
\M_WSTRB_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => strb_reg(1),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WSTRB(1)
    );
\M_WSTRB_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => strb_reg(2),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WSTRB(2)
    );
\M_WSTRB_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => strb_reg(3),
      G => \M_AWADDR_reg[31]_i_1_n_0\,
      GE => '1',
      Q => M_WSTRB(3)
    );
\U_RDATA_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(0),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(0)
    );
\U_RDATA_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(10),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(10)
    );
\U_RDATA_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(11),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(11)
    );
\U_RDATA_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(12),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(12)
    );
\U_RDATA_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(13),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(13)
    );
\U_RDATA_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(14),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(14)
    );
\U_RDATA_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(15),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(15)
    );
\U_RDATA_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(16),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(16)
    );
\U_RDATA_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(17),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(17)
    );
\U_RDATA_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(18),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(18)
    );
\U_RDATA_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(19),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(19)
    );
\U_RDATA_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(1),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(1)
    );
\U_RDATA_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(20),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(20)
    );
\U_RDATA_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(21),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(21)
    );
\U_RDATA_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(22),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(22)
    );
\U_RDATA_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(23),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(23)
    );
\U_RDATA_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(24),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(24)
    );
\U_RDATA_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(25),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(25)
    );
\U_RDATA_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(26),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(26)
    );
\U_RDATA_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(27),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(27)
    );
\U_RDATA_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(28),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(28)
    );
\U_RDATA_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(29),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(29)
    );
\U_RDATA_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(2),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(2)
    );
\U_RDATA_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(30),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(30)
    );
\U_RDATA_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(31),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(31)
    );
\U_RDATA_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(1),
      I3 => state(4),
      I4 => state(0),
      O => \U_RDATA_reg[31]_i_1_n_0\
    );
\U_RDATA_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(3),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(3)
    );
\U_RDATA_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(4),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(4)
    );
\U_RDATA_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(5),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(5)
    );
\U_RDATA_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(6),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(6)
    );
\U_RDATA_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(7),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(7)
    );
\U_RDATA_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(8),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(8)
    );
\U_RDATA_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => read_data_reg(9),
      G => \U_RDATA_reg[31]_i_1_n_0\,
      GE => '1',
      Q => U_RDATA(9)
    );
\araddr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(0),
      Q => araddr_reg(0),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(10),
      Q => araddr_reg(10),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(11),
      Q => araddr_reg(11),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(12),
      Q => araddr_reg(12),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(13),
      Q => araddr_reg(13),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(14),
      Q => araddr_reg(14),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(15),
      Q => araddr_reg(15),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(16),
      Q => araddr_reg(16),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(17),
      Q => araddr_reg(17),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(18),
      Q => araddr_reg(18),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(19),
      Q => araddr_reg(19),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(1),
      Q => araddr_reg(1),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(20),
      Q => araddr_reg(20),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(21),
      Q => araddr_reg(21),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(22),
      Q => araddr_reg(22),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(23),
      Q => araddr_reg(23),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(24),
      Q => araddr_reg(24),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(25),
      Q => araddr_reg(25),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(26),
      Q => araddr_reg(26),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(27),
      Q => araddr_reg(27),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(28),
      Q => araddr_reg(28),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(29),
      Q => araddr_reg(29),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(2),
      Q => araddr_reg(2),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(30),
      Q => araddr_reg(30),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(31),
      Q => araddr_reg(31),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(3),
      Q => araddr_reg(3),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(4),
      Q => araddr_reg(4),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(5),
      Q => araddr_reg(5),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(6),
      Q => araddr_reg(6),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(7),
      Q => araddr_reg(7),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(8),
      Q => araddr_reg(8),
      R => \state[4]_i_1_n_0\
    );
\araddr_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_ARADDR(9),
      Q => araddr_reg(9),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(0),
      Q => awaddr_reg(0),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(10),
      Q => awaddr_reg(10),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(11),
      Q => awaddr_reg(11),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(12),
      Q => awaddr_reg(12),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(13),
      Q => awaddr_reg(13),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(14),
      Q => awaddr_reg(14),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(15),
      Q => awaddr_reg(15),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(16),
      Q => awaddr_reg(16),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(17),
      Q => awaddr_reg(17),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(18),
      Q => awaddr_reg(18),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(19),
      Q => awaddr_reg(19),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(1),
      Q => awaddr_reg(1),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(20),
      Q => awaddr_reg(20),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(21),
      Q => awaddr_reg(21),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(22),
      Q => awaddr_reg(22),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(23),
      Q => awaddr_reg(23),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(24),
      Q => awaddr_reg(24),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(25),
      Q => awaddr_reg(25),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(26),
      Q => awaddr_reg(26),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(27),
      Q => awaddr_reg(27),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(28),
      Q => awaddr_reg(28),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(29),
      Q => awaddr_reg(29),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(2),
      Q => awaddr_reg(2),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(30),
      Q => awaddr_reg(30),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(31),
      Q => awaddr_reg(31),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(3),
      Q => awaddr_reg(3),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(4),
      Q => awaddr_reg(4),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(5),
      Q => awaddr_reg(5),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(6),
      Q => awaddr_reg(6),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(7),
      Q => awaddr_reg(7),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(8),
      Q => awaddr_reg(8),
      R => \state[4]_i_1_n_0\
    );
\awaddr_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_AWADDR(9),
      Q => awaddr_reg(9),
      R => \state[4]_i_1_n_0\
    );
\burst_length_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_BLEN(0),
      Q => burst_length(0),
      R => \state[4]_i_1_n_0\
    );
\burst_length_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_BLEN(1),
      Q => burst_length(1),
      R => \state[4]_i_1_n_0\
    );
\burst_length_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_BLEN(2),
      Q => burst_length(2),
      R => \state[4]_i_1_n_0\
    );
\burst_length_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_RVALID,
      D => U_BLEN(3),
      Q => burst_length(3),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(0),
      Q => read_data_reg(0),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(10),
      Q => read_data_reg(10),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(11),
      Q => read_data_reg(11),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(12),
      Q => read_data_reg(12),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(13),
      Q => read_data_reg(13),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(14),
      Q => read_data_reg(14),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(15),
      Q => read_data_reg(15),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(16),
      Q => read_data_reg(16),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(17),
      Q => read_data_reg(17),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(18),
      Q => read_data_reg(18),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(19),
      Q => read_data_reg(19),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(1),
      Q => read_data_reg(1),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(20),
      Q => read_data_reg(20),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(21),
      Q => read_data_reg(21),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(22),
      Q => read_data_reg(22),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(23),
      Q => read_data_reg(23),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(24),
      Q => read_data_reg(24),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(25),
      Q => read_data_reg(25),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(26),
      Q => read_data_reg(26),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(27),
      Q => read_data_reg(27),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(28),
      Q => read_data_reg(28),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(29),
      Q => read_data_reg(29),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(2),
      Q => read_data_reg(2),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(30),
      Q => read_data_reg(30),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(31),
      Q => read_data_reg(31),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(3),
      Q => read_data_reg(3),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(4),
      Q => read_data_reg(4),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(5),
      Q => read_data_reg(5),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(6),
      Q => read_data_reg(6),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(7),
      Q => read_data_reg(7),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(8),
      Q => read_data_reg(8),
      R => \state[4]_i_1_n_0\
    );
\read_data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => '1',
      D => S_RDATA(9),
      Q => read_data_reg(9),
      R => \state[4]_i_1_n_0\
    );
\state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(3),
      I1 => state(4),
      O => state_next(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => U_RVALID,
      I1 => state(3),
      I2 => state(2),
      I3 => state(4),
      I4 => state(1),
      O => state_next(1)
    );
\state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(4),
      I3 => state(1),
      I4 => U_RVALID,
      O => state_next(2)
    );
\state[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => M_ARESET_N,
      O => \state[4]_i_1_n_0\
    );
\state[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \state[4]_i_3_n_0\,
      I1 => state(0),
      I2 => \state[4]_i_4_n_0\,
      I3 => state(1),
      I4 => \state[4]_i_5_n_0\,
      O => \state[4]_i_2_n_0\
    );
\state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000E"
    )
        port map (
      I0 => U_WVALID,
      I1 => U_RVALID,
      I2 => state(4),
      I3 => state(2),
      I4 => state(3),
      I5 => state(1),
      O => \state[4]_i_3_n_0\
    );
\state[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => state(2),
      I1 => state(4),
      I2 => S_ARREADY,
      I3 => state(3),
      O => \state[4]_i_4_n_0\
    );
\state[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033308800003088"
    )
        port map (
      I0 => S_AWREADY,
      I1 => state(2),
      I2 => S_RVALID,
      I3 => state(3),
      I4 => state(4),
      I5 => S_WREADY,
      O => \state[4]_i_5_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => M_ACLK,
      CE => \state[4]_i_2_n_0\,
      D => state_next(0),
      Q => state(0),
      S => \state[4]_i_1_n_0\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \state[4]_i_2_n_0\,
      D => state_next(1),
      Q => state(1),
      R => \state[4]_i_1_n_0\
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \state[4]_i_2_n_0\,
      D => state_next(2),
      Q => state(2),
      R => \state[4]_i_1_n_0\
    );
\state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \state[4]_i_2_n_0\,
      D => state(1),
      Q => state(3),
      R => \state[4]_i_1_n_0\
    );
\state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => \state[4]_i_2_n_0\,
      D => state(2),
      Q => state(4),
      R => \state[4]_i_1_n_0\
    );
\strb_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_STRB(0),
      Q => strb_reg(0),
      R => \state[4]_i_1_n_0\
    );
\strb_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_STRB(1),
      Q => strb_reg(1),
      R => \state[4]_i_1_n_0\
    );
\strb_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_STRB(2),
      Q => strb_reg(2),
      R => \state[4]_i_1_n_0\
    );
\strb_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_STRB(3),
      Q => strb_reg(3),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(0),
      Q => write_data_reg(0),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(10),
      Q => write_data_reg(10),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(11),
      Q => write_data_reg(11),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(12),
      Q => write_data_reg(12),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(13),
      Q => write_data_reg(13),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(14),
      Q => write_data_reg(14),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(15),
      Q => write_data_reg(15),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(16),
      Q => write_data_reg(16),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(17),
      Q => write_data_reg(17),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(18),
      Q => write_data_reg(18),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(19),
      Q => write_data_reg(19),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(1),
      Q => write_data_reg(1),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(20),
      Q => write_data_reg(20),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(21),
      Q => write_data_reg(21),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(22),
      Q => write_data_reg(22),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(23),
      Q => write_data_reg(23),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(24),
      Q => write_data_reg(24),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(25),
      Q => write_data_reg(25),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(26),
      Q => write_data_reg(26),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(27),
      Q => write_data_reg(27),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(28),
      Q => write_data_reg(28),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(29),
      Q => write_data_reg(29),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(2),
      Q => write_data_reg(2),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(30),
      Q => write_data_reg(30),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(31),
      Q => write_data_reg(31),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(3),
      Q => write_data_reg(3),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(4),
      Q => write_data_reg(4),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(5),
      Q => write_data_reg(5),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(6),
      Q => write_data_reg(6),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(7),
      Q => write_data_reg(7),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(8),
      Q => write_data_reg(8),
      R => \state[4]_i_1_n_0\
    );
\write_data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_ACLK,
      CE => U_WVALID,
      D => U_WDATA(9),
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
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_ACLK : signal is "xilinx.com:signal:clock:1.0 M_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of M_ACLK : signal is "XIL_INTERFACENAME M_ACLK, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  M_ARVALID <= \<const0>\;
  M_AWVALID <= \<const0>\;
  M_BREADY <= \<const0>\;
  M_RREADY <= \<const0>\;
  M_WVALID <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.axi_test_1_axi_master_fsm_0_0_axi_master_fsm
     port map (
      M_ACLK => M_ACLK,
      M_ARADDR(31 downto 0) => M_ARADDR(31 downto 0),
      M_ARESET_N => M_ARESET_N,
      M_AWADDR(31 downto 0) => M_AWADDR(31 downto 0),
      M_BLEN(3 downto 0) => M_BLEN(3 downto 0),
      M_WDATA(31 downto 0) => M_WDATA(31 downto 0),
      M_WSTRB(3 downto 0) => M_WSTRB(3 downto 0),
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
