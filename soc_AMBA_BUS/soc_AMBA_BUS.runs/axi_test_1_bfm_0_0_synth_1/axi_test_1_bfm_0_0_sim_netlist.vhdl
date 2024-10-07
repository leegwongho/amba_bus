-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Oct  7 20:33:41 2024
-- Host        : leegwongho running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axi_test_1_bfm_0_0_sim_netlist.vhdl
-- Design      : axi_test_1_bfm_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bfm is
  port (
    U_WDATA : out STD_LOGIC_VECTOR ( 14 downto 0 );
    U_STRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    U_BLEN : out STD_LOGIC_VECTOR ( 0 to 0 );
    led : out STD_LOGIC_VECTOR ( 14 downto 0 );
    U_WVALID : out STD_LOGIC;
    U_RVALID : out STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    U_RDATA : in STD_LOGIC_VECTOR ( 14 downto 0 );
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bfm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bfm is
  signal \^u_rvalid\ : STD_LOGIC;
  signal U_RVALID_i_1_n_0 : STD_LOGIC;
  signal \U_WDATA[14]_i_1_n_0\ : STD_LOGIC;
  signal \^u_wvalid\ : STD_LOGIC;
  signal U_WVALID_i_1_n_0 : STD_LOGIC;
  signal U_WVALID_i_2_n_0 : STD_LOGIC;
  signal \clk_div_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[2]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[3]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[4]\ : STD_LOGIC;
  signal \led[14]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of U_RVALID_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of U_WVALID_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_div[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_div[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_div[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_div[4]_i_1\ : label is "soft_lutpair0";
begin
  U_RVALID <= \^u_rvalid\;
  U_WVALID <= \^u_wvalid\;
\U_BLEN_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => U_WVALID_i_2_n_0,
      D => '1',
      Q => U_BLEN(0)
    );
U_RVALID_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^u_rvalid\,
      I1 => sw(15),
      I2 => p_0_in_0,
      O => U_RVALID_i_1_n_0
    );
U_RVALID_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => U_WVALID_i_2_n_0,
      D => U_RVALID_i_1_n_0,
      Q => \^u_rvalid\
    );
\U_STRB_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(15),
      Q => U_STRB(0)
    );
\U_WDATA[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in_0,
      I1 => sw(15),
      O => \U_WDATA[14]_i_1_n_0\
    );
\U_WDATA_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(0),
      Q => U_WDATA(0)
    );
\U_WDATA_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(10),
      Q => U_WDATA(10)
    );
\U_WDATA_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(11),
      Q => U_WDATA(11)
    );
\U_WDATA_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(12),
      Q => U_WDATA(12)
    );
\U_WDATA_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(13),
      Q => U_WDATA(13)
    );
\U_WDATA_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(14),
      Q => U_WDATA(14)
    );
\U_WDATA_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(1),
      Q => U_WDATA(1)
    );
\U_WDATA_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(2),
      Q => U_WDATA(2)
    );
\U_WDATA_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(3),
      Q => U_WDATA(3)
    );
\U_WDATA_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(4),
      Q => U_WDATA(4)
    );
\U_WDATA_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(5),
      Q => U_WDATA(5)
    );
\U_WDATA_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(6),
      Q => U_WDATA(6)
    );
\U_WDATA_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(7),
      Q => U_WDATA(7)
    );
\U_WDATA_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(8),
      Q => U_WDATA(8)
    );
\U_WDATA_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \U_WDATA[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => sw(9),
      Q => U_WDATA(9)
    );
U_WVALID_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => sw(15),
      I1 => p_0_in_0,
      I2 => \^u_wvalid\,
      O => U_WVALID_i_1_n_0
    );
U_WVALID_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => U_WVALID_i_2_n_0
    );
U_WVALID_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => U_WVALID_i_2_n_0,
      D => U_WVALID_i_1_n_0,
      Q => \^u_wvalid\
    );
\clk_div[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_div_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\clk_div[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clk_div_reg_n_0_[0]\,
      I1 => \clk_div_reg_n_0_[1]\,
      O => p_0_in(1)
    );
\clk_div[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \clk_div_reg_n_0_[0]\,
      I1 => \clk_div_reg_n_0_[1]\,
      I2 => \clk_div_reg_n_0_[2]\,
      O => p_0_in(2)
    );
\clk_div[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \clk_div_reg_n_0_[1]\,
      I1 => \clk_div_reg_n_0_[0]\,
      I2 => \clk_div_reg_n_0_[2]\,
      I3 => \clk_div_reg_n_0_[3]\,
      O => p_0_in(3)
    );
\clk_div[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \clk_div_reg_n_0_[2]\,
      I1 => \clk_div_reg_n_0_[0]\,
      I2 => \clk_div_reg_n_0_[1]\,
      I3 => \clk_div_reg_n_0_[3]\,
      I4 => \clk_div_reg_n_0_[4]\,
      O => p_0_in(4)
    );
\clk_div[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \clk_div_reg_n_0_[3]\,
      I1 => \clk_div_reg_n_0_[1]\,
      I2 => \clk_div_reg_n_0_[0]\,
      I3 => \clk_div_reg_n_0_[2]\,
      I4 => \clk_div_reg_n_0_[4]\,
      I5 => p_0_in_0,
      O => p_0_in(5)
    );
\clk_div_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => U_WVALID_i_2_n_0,
      D => p_0_in(0),
      Q => \clk_div_reg_n_0_[0]\
    );
\clk_div_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => U_WVALID_i_2_n_0,
      D => p_0_in(1),
      Q => \clk_div_reg_n_0_[1]\
    );
\clk_div_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => U_WVALID_i_2_n_0,
      D => p_0_in(2),
      Q => \clk_div_reg_n_0_[2]\
    );
\clk_div_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => U_WVALID_i_2_n_0,
      D => p_0_in(3),
      Q => \clk_div_reg_n_0_[3]\
    );
\clk_div_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => U_WVALID_i_2_n_0,
      D => p_0_in(4),
      Q => \clk_div_reg_n_0_[4]\
    );
\clk_div_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => U_WVALID_i_2_n_0,
      D => p_0_in(5),
      Q => p_0_in_0
    );
\led[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw(15),
      I1 => p_0_in_0,
      O => \led[14]_i_1_n_0\
    );
\led_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => U_RDATA(0),
      Q => led(0)
    );
\led_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => U_RDATA(10),
      Q => led(10)
    );
\led_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => U_RDATA(11),
      Q => led(11)
    );
\led_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => U_RDATA(12),
      Q => led(12)
    );
\led_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => U_RDATA(13),
      Q => led(13)
    );
\led_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => U_RDATA(14),
      Q => led(14)
    );
\led_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => U_RDATA(1),
      Q => led(1)
    );
\led_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => U_RDATA(2),
      Q => led(2)
    );
\led_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => U_RDATA(3),
      Q => led(3)
    );
\led_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => U_RDATA(4),
      Q => led(4)
    );
\led_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => U_RDATA(5),
      Q => led(5)
    );
\led_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => U_RDATA(6),
      Q => led(6)
    );
\led_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => U_RDATA(7),
      Q => led(7)
    );
\led_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => U_RDATA(8),
      Q => led(8)
    );
\led_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \led[14]_i_1_n_0\,
      CLR => U_WVALID_i_2_n_0,
      D => U_RDATA(9),
      Q => led(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    U_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    U_WVALID : out STD_LOGIC;
    U_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    U_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    U_STRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    U_RVALID : out STD_LOGIC;
    U_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    U_BLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_test_1_bfm_0_0,bfm,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bfm,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^u_blen\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^u_strb\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^u_wdata\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  U_ARADDR(31) <= \<const0>\;
  U_ARADDR(30) <= \<const0>\;
  U_ARADDR(29) <= \<const0>\;
  U_ARADDR(28) <= \<const0>\;
  U_ARADDR(27) <= \<const0>\;
  U_ARADDR(26) <= \<const0>\;
  U_ARADDR(25) <= \<const0>\;
  U_ARADDR(24) <= \<const0>\;
  U_ARADDR(23) <= \<const0>\;
  U_ARADDR(22) <= \<const0>\;
  U_ARADDR(21) <= \<const0>\;
  U_ARADDR(20) <= \<const0>\;
  U_ARADDR(19) <= \<const0>\;
  U_ARADDR(18) <= \<const0>\;
  U_ARADDR(17) <= \<const0>\;
  U_ARADDR(16) <= \<const0>\;
  U_ARADDR(15) <= \<const0>\;
  U_ARADDR(14) <= \<const0>\;
  U_ARADDR(13) <= \<const0>\;
  U_ARADDR(12) <= \<const0>\;
  U_ARADDR(11) <= \<const0>\;
  U_ARADDR(10) <= \<const0>\;
  U_ARADDR(9) <= \<const0>\;
  U_ARADDR(8) <= \<const0>\;
  U_ARADDR(7) <= \<const0>\;
  U_ARADDR(6) <= \<const0>\;
  U_ARADDR(5) <= \<const0>\;
  U_ARADDR(4) <= \<const0>\;
  U_ARADDR(3) <= \<const0>\;
  U_ARADDR(2) <= \<const0>\;
  U_ARADDR(1) <= \<const0>\;
  U_ARADDR(0) <= \<const0>\;
  U_AWADDR(31) <= \<const0>\;
  U_AWADDR(30) <= \<const0>\;
  U_AWADDR(29) <= \<const0>\;
  U_AWADDR(28) <= \<const0>\;
  U_AWADDR(27) <= \<const0>\;
  U_AWADDR(26) <= \<const0>\;
  U_AWADDR(25) <= \<const0>\;
  U_AWADDR(24) <= \<const0>\;
  U_AWADDR(23) <= \<const0>\;
  U_AWADDR(22) <= \<const0>\;
  U_AWADDR(21) <= \<const0>\;
  U_AWADDR(20) <= \<const0>\;
  U_AWADDR(19) <= \<const0>\;
  U_AWADDR(18) <= \<const0>\;
  U_AWADDR(17) <= \<const0>\;
  U_AWADDR(16) <= \<const0>\;
  U_AWADDR(15) <= \<const0>\;
  U_AWADDR(14) <= \<const0>\;
  U_AWADDR(13) <= \<const0>\;
  U_AWADDR(12) <= \<const0>\;
  U_AWADDR(11) <= \<const0>\;
  U_AWADDR(10) <= \<const0>\;
  U_AWADDR(9) <= \<const0>\;
  U_AWADDR(8) <= \<const0>\;
  U_AWADDR(7) <= \<const0>\;
  U_AWADDR(6) <= \<const0>\;
  U_AWADDR(5) <= \<const0>\;
  U_AWADDR(4) <= \<const0>\;
  U_AWADDR(3) <= \<const0>\;
  U_AWADDR(2) <= \<const0>\;
  U_AWADDR(1) <= \<const0>\;
  U_AWADDR(0) <= \<const0>\;
  U_BLEN(3) <= \^u_blen\(2);
  U_BLEN(2) <= \^u_blen\(2);
  U_BLEN(1) <= \^u_blen\(2);
  U_BLEN(0) <= \^u_blen\(2);
  U_STRB(3) <= \^u_strb\(2);
  U_STRB(2) <= \^u_strb\(2);
  U_STRB(1) <= \^u_strb\(2);
  U_STRB(0) <= \^u_strb\(2);
  U_WDATA(31) <= \<const0>\;
  U_WDATA(30) <= \<const0>\;
  U_WDATA(29) <= \<const0>\;
  U_WDATA(28) <= \<const0>\;
  U_WDATA(27) <= \<const0>\;
  U_WDATA(26) <= \<const0>\;
  U_WDATA(25) <= \<const0>\;
  U_WDATA(24) <= \<const0>\;
  U_WDATA(23) <= \<const0>\;
  U_WDATA(22) <= \<const0>\;
  U_WDATA(21) <= \<const0>\;
  U_WDATA(20) <= \<const0>\;
  U_WDATA(19) <= \<const0>\;
  U_WDATA(18) <= \<const0>\;
  U_WDATA(17) <= \<const0>\;
  U_WDATA(16) <= \<const0>\;
  U_WDATA(15) <= \<const0>\;
  U_WDATA(14 downto 0) <= \^u_wdata\(14 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bfm
     port map (
      U_BLEN(0) => \^u_blen\(2),
      U_RDATA(14 downto 0) => U_RDATA(14 downto 0),
      U_RVALID => U_RVALID,
      U_STRB(0) => \^u_strb\(2),
      U_WDATA(14 downto 0) => \^u_wdata\(14 downto 0),
      U_WVALID => U_WVALID,
      clk => clk,
      led(14 downto 0) => led(14 downto 0),
      reset => reset,
      sw(15 downto 0) => sw(15 downto 0)
    );
end STRUCTURE;
