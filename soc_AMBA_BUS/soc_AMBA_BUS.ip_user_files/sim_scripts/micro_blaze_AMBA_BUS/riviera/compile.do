vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/microblaze_v11_0_2
vlib riviera/lmb_v10_v3_0_10
vlib riviera/lmb_bram_if_cntlr_v4_0_17
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_v3_2_17
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_20
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_19
vlib riviera/axi_crossbar_v2_1_21
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_uartlite_v2_0_24

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap microblaze_v11_0_2 riviera/microblaze_v11_0_2
vmap lmb_v10_v3_0_10 riviera/lmb_v10_v3_0_10
vmap lmb_bram_if_cntlr_v4_0_17 riviera/lmb_bram_if_cntlr_v4_0_17
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_17 riviera/mdm_v3_2_17
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_20 riviera/axi_register_slice_v2_1_20
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 riviera/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 riviera/axi_crossbar_v2_1_21
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_24 riviera/axi_uartlite_v2_0_24

vlog -work xpm  -sv2k12 "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/4fba" "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/4fba" "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/ec67/hdl" \
"../../../bd/micro_blaze_AMBA_BUS/ip/micro_blaze_AMBA_BUS_clk_wiz_0_0/micro_blaze_AMBA_BUS_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/micro_blaze_AMBA_BUS/ip/micro_blaze_AMBA_BUS_clk_wiz_0_0/micro_blaze_AMBA_BUS_clk_wiz_0_0.v" \

vcom -work microblaze_v11_0_2 -93 \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/f871/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/micro_blaze_AMBA_BUS/ip/micro_blaze_AMBA_BUS_microblaze_0_0/sim/micro_blaze_AMBA_BUS_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_10 -93 \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/2e88/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/micro_blaze_AMBA_BUS/ip/micro_blaze_AMBA_BUS_dlmb_v10_0/sim/micro_blaze_AMBA_BUS_dlmb_v10_0.vhd" \
"../../../bd/micro_blaze_AMBA_BUS/ip/micro_blaze_AMBA_BUS_ilmb_v10_0/sim/micro_blaze_AMBA_BUS_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_17 -93 \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/db6f/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/micro_blaze_AMBA_BUS/ip/micro_blaze_AMBA_BUS_dlmb_bram_if_cntlr_0/sim/micro_blaze_AMBA_BUS_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/micro_blaze_AMBA_BUS/ip/micro_blaze_AMBA_BUS_ilmb_bram_if_cntlr_0/sim/micro_blaze_AMBA_BUS_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/4fba" "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/ec67/hdl" \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/4fba" "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/ec67/hdl" \
"../../../bd/micro_blaze_AMBA_BUS/ip/micro_blaze_AMBA_BUS_lmb_bram_0/sim/micro_blaze_AMBA_BUS_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_17 -93 \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/f9aa/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/micro_blaze_AMBA_BUS/ip/micro_blaze_AMBA_BUS_mdm_1_0/sim/micro_blaze_AMBA_BUS_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/micro_blaze_AMBA_BUS/ip/micro_blaze_AMBA_BUS_rst_clk_wiz_0_100M_0/sim/micro_blaze_AMBA_BUS_rst_clk_wiz_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/4fba" "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/ec67/hdl" \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/4fba" "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/ec67/hdl" \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20  -v2k5 "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/4fba" "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/ec67/hdl" \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/4fba" "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/ec67/hdl" \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/4fba" "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/ec67/hdl" \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19  -v2k5 "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/4fba" "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/ec67/hdl" \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21  -v2k5 "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/4fba" "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/ec67/hdl" \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/4fba" "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/ec67/hdl" \
"../../../bd/micro_blaze_AMBA_BUS/ip/micro_blaze_AMBA_BUS_xbar_0/sim/micro_blaze_AMBA_BUS_xbar_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_24 -93 \
"../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/d8db/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/micro_blaze_AMBA_BUS/ip/micro_blaze_AMBA_BUS_axi_uartlite_0_0/sim/micro_blaze_AMBA_BUS_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/4fba" "+incdir+../../../../soc_AMBA_BUS.srcs/sources_1/bd/micro_blaze_AMBA_BUS/ipshared/ec67/hdl" \
"../../../bd/micro_blaze_AMBA_BUS/ipshared/ab19/src/axi_master_fsm.v" \
"../../../bd/micro_blaze_AMBA_BUS/ipshared/ab19/src/axi_slave_fsm.v" \
"../../../bd/micro_blaze_AMBA_BUS/ipshared/ab19/src/axi_top.v" \
"../../../bd/micro_blaze_AMBA_BUS/ipshared/ab19/hdl/myip_axi_test_led_v1_0_S00_AXI.v" \
"../../../bd/micro_blaze_AMBA_BUS/ipshared/ab19/hdl/myip_axi_test_led_v1_0.v" \
"../../../bd/micro_blaze_AMBA_BUS/ip/micro_blaze_AMBA_BUS_myip_axi_test_led_0_0/sim/micro_blaze_AMBA_BUS_myip_axi_test_led_0_0.v" \
"../../../bd/micro_blaze_AMBA_BUS/sim/micro_blaze_AMBA_BUS.v" \

vlog -work xil_defaultlib \
"glbl.v"

