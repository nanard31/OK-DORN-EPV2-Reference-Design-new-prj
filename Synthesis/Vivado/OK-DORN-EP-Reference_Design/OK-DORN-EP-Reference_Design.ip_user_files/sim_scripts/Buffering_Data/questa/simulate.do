onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Buffering_Data_opt

do {wave.do}

view wave
view structure
view signals

do {Buffering_Data.udo}

run -all

quit -force
