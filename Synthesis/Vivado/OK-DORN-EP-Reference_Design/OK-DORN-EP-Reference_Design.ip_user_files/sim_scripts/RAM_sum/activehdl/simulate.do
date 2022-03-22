onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+RAM_sum -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RAM_sum xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {RAM_sum.udo}

run -all

endsim

quit -force
