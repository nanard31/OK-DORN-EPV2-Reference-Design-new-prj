onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RAM_sum_opt

do {wave.do}

view wave
view structure
view signals

do {RAM_sum.udo}

run -all

quit -force
