connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Basys3 210183BCBAE8A" && level==0} -index 0
fpga -file C:/github/amba_bus/microblaze_aix_led_test_app/_ide/bitstream/micro_blaze_AMBA_BUS_wrapper.bit
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/github/amba_bus/microblaze_aix_led_test_app/Debug/microblaze_aix_led_test_app.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
