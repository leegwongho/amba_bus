//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Mon Oct  7 21:51:15 2024
//Host        : leegwongho running 64-bit major release  (build 9200)
//Command     : generate_target axi_test_1_wrapper.bd
//Design      : axi_test_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module axi_test_1_wrapper
   (led,
    reset,
    sw,
    sys_clock);
  output [14:0]led;
  input reset;
  input [15:0]sw;
  input sys_clock;

  wire [14:0]led;
  wire reset;
  wire [15:0]sw;
  wire sys_clock;

  axi_test_1 axi_test_1_i
       (.led(led),
        .reset(reset),
        .sw(sw),
        .sys_clock(sys_clock));
endmodule
