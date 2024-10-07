-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Oct  7 20:33:44 2024
-- Host        : leegwongho running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/github/amba_bus/soc_AMBA_BUS/soc_AMBA_BUS.srcs/sources_1/bd/axi_test_1/ip/axi_test_1_axi_master_fsm_0_0/axi_test_1_axi_master_fsm_0_0_stub.vhdl
-- Design      : axi_test_1_axi_master_fsm_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity axi_test_1_axi_master_fsm_0_0 is
  Port ( 
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

end axi_test_1_axi_master_fsm_0_0;

architecture stub of axi_test_1_axi_master_fsm_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "M_ACLK,M_ARESET_N,S_AWREADY,M_AWVALID,M_AWADDR[31:0],S_WREADY,M_WVALID,M_WDATA[31:0],M_WSTRB[3:0],S_BRESP[1:0],S_BVALID,M_BREADY,S_ARREADY,M_ARVALID,M_ARADDR[31:0],S_RDATA[31:0],S_RVALID,M_BLEN[3:0],M_RREADY,U_WVALID,U_AWADDR[31:0],U_WDATA[31:0],U_STRB[3:0],U_RVALID,U_ARADDR[31:0],U_BLEN[3:0],U_RDATA[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_master_fsm,Vivado 2019.2";
begin
end;
