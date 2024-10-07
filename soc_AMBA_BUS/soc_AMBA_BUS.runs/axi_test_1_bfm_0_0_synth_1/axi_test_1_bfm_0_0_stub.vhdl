-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Oct  7 20:33:41 2024
-- Host        : leegwongho running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axi_test_1_bfm_0_0_stub.vhdl
-- Design      : axi_test_1_bfm_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,U_RDATA[31:0],sw[15:0],U_WVALID,U_AWADDR[31:0],U_WDATA[31:0],U_STRB[3:0],U_RVALID,U_ARADDR[31:0],U_BLEN[3:0],led[14:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bfm,Vivado 2019.2";
begin
end;
