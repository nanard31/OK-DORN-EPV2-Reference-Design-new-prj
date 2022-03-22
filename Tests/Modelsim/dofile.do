# Questa Sim-64 2020.1 simulation scrip for DORN project
# cd D:/CNRS_IRAP_DORN/SVN_DORN/Fusio/Tests/QuestaSim-64

##################################################################################################################
## Directories
##################################################################################################################

echo "Set directories:"
set Lib_Dir "../Libraries_NX"
set Sources_Dir "../../Sources_NX"
#set Sources_FLASH_dir "../../Sources/3DPlus_Core/Fusio_FLASH"
#set Sources_SDRAM_dir "../../Sources/3DPlus_Core/Fusio_SDRAM"
set Test_Dir "../"

##################################################################################################################
## Libraries, Sources, and Tests 
##################################################################################################################

# Declare libraries only the first time launching QuestaSim to create them if they did not exist
#vlib nx # nx_xmap3
# vlib m62b # m62b NAND FLASH Model
# vlib issi # ISSI SDRAM Model
#vlib work



# add nxLibrary only the first time launching QuestaSim
echo "Compilation: NX library" 
vcom -work nx -quiet -vopt -2008 "$Lib_Dir/nx_xmap3/nxLibrary.vhdp"

##################################################################################################################


##################################################################################################################

echo "Compilation: DORN Sources"
vcom -work work -quiet -vopt -2008 "$Sources_Dir/Event_Processor/Clock_Unit_NanoXplore.vhd"
vcom -work work -quiet -vopt -2008 "$Sources_Dir/Event_Processor/Event_Processor_package.vhd"
#vcom -work work -quiet -vopt -2008 "$Sources_Dir/FIFO_Managers/FIFO_Generic_NOECC.vhd"
vcom -work work -quiet -vopt -2008 "$Sources_Dir/Memory/Module_FIFO.vhd"
vcom -work work -quiet -vopt -2008 "$Sources_Dir/Memory/RAM_Generic_NOECC.vhd"
vcom -work work -quiet -vopt -2008 "$Sources_Dir/Event_Processor/Filter_FAST_coef.vhd"
vcom -work work -quiet -vopt -2008 "$Sources_Dir/Event_Processor/Filter_SLOW_coef.vhd"
vcom -work work -quiet -vopt -2008 "$Sources_Dir/Event_Processor/Coeff_Table.vhd"
vcom -work work -quiet -vopt -2008 "$Sources_Dir/Event_Processor/divider.vhd"
vcom -work work -quiet -vopt -2008 "$Sources_Dir/Event_Processor/Energy_correction.vhd"
vcom -work work -quiet -vopt -2008 "$Sources_Dir/Event_Processor/Event_Processor.vhd"
vcom -work work -quiet -vopt -2008 "$Sources_Dir/Interfaces/Universal_signal_generator.vhd"
vcom -work work -quiet -vopt -2008 "$Sources_Dir/Interfaces/ADC_Sequencer.vhd"
vcom -work work -quiet -vopt -2008 "$Sources_Dir/Interfaces/Event_Processor_Interfaces.vhd"

##################################################################################################################
vcom -work work -quiet  -vopt -2008 "../../TestBench/NX/TB_Event_processor_nx.vhd"
vsim -vopt -voptargs=+acc -t 1ps work.TB_Event_processor_nx

# clear warnings at 0 ps
#set StdArithNoWarnings 1
#set NumericStdNoWarnings 1
#set IgnoreWarning 1

###############

# run 100000us
run 1000ms
wave zoom full
