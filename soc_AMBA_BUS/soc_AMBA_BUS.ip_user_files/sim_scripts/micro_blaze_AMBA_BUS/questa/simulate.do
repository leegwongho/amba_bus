onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib micro_blaze_AMBA_BUS_opt

do {wave.do}

view wave
view structure
view signals

do {micro_blaze_AMBA_BUS.udo}

run -all

quit -force
