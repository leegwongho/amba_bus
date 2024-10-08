-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Oct  7 20:33:49 2024
-- Host        : leegwongho running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axi_test_1_axi_slave_fsm_0_0_stub.vhdl
-- Design      : axi_test_1_axi_slave_fsm_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    S_ACLK : in STD_LOGIC;
    S_ARRESET_N : in STD_LOGIC;
    M_AWVALID : in STD_LOGIC;
    M_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AWREADY : out STD_LOGIC;
    M_WVALID : in STD_LOGIC;
    M_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_WREADY : out STD_LOGIC;
    M_BREADY : in STD_LOGIC;
    S_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_BVALID : out STD_LOGIC;
    M_ARVALID : in STD_LOGIC;
    M_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_ARREADY : out STD_LOGIC;
    M_RREADY : in STD_LOGIC;
    M_BLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_RVALID : out STD_LOGIC;
    S_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "S_ACLK,S_ARRESET_N,M_AWVALID,M_AWADDR[31:0],S_AWREADY,M_WVALID,M_WDATA[31:0],M_WSTRB[3:0],S_WREADY,M_BREADY,S_BRESP[1:0],S_BVALID,M_ARVALID,M_ARADDR[31:0],S_ARREADY,M_RREADY,M_BLEN[3:0],S_RVALID,S_RDATA[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_slave_fsm,Vivado 2019.2";
begin
end;
