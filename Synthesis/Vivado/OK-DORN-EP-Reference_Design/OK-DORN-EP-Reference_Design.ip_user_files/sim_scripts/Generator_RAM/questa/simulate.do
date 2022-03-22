onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Generator_RAM_opt

do {wave.do}

view wave
view structure
view signals

do {Generator_RAM.udo}

run -all

quit -force
