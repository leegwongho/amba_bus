//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Tue Sep 24 10:51:56 2024
//Host        : leegwongho running 64-bit major release  (build 9200)
//Command     : generate_target micro_blaze_AMBA_BUS_wrapper.bd
//Design      : micro_blaze_AMBA_BUS_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module micro_blaze_AMBA_BUS_wrapper
   (reset,
    sys_clock);
  input reset;
  input sys_clock;

  wire reset;
  wire sys_clock;

  micro_blaze_AMBA_BUS micro_blaze_AMBA_BUS_i
       (.reset(reset),
        .sys_clock(sys_clock));
endmodule
