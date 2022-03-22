onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_w256_128_r32_1024_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_w256_128_r32_1024.udo}

run -all

quit -force
