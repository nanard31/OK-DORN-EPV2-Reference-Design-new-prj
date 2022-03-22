import os
import sys
# import shutil

from os import path
from nxmap import *

file_version = "10"  # Max 15

################################################################################################
# SOURCE DIRECTORY TO CHANGE !
################################################################################################
sources_directory = "/media/sf_partage_ubuntu/OK-DORN-EP-Reference-Design-new-prj/Sources/"
sources_directory_event_processor ="/media/sf_partage_ubuntu/OK-DORN-EP-Reference-Design-new-prj/Sources/Event_Processor/"
#nxb_file_name = "DORN_Fusio_" + str(file_version)

print('\n###################')
print('# SOURCE DIRECTORY: ' + sources_directory)
print('###################\n')

directory = os.path.dirname(os.path.realpath(__file__))

################################################################################################
# WORK DIRECTORY
################################################################################################
print('###################')
print('# WORK DIRECTORY:   ' + directory + '/')
print('###################\n')

# setVerbosity(0)

project = createProject()
project.setVariantName('NG-MEDIUM')

################################################################################################
# FILES TO COMPILE
################################################################################################
project.addFile("/media/sf_partage_ubuntu/OK-DORN-EP-Reference-Design-new-prj/Sources_NX/Event_Processor/" +'Clock_Unit_NanoXplore.vhd')
project.addFile("/media/sf_partage_ubuntu/OK-DORN-EP-Reference-Design-new-prj/Sources_NX/Event_Processor/" +'Event_Processor_package.vhd')
project.addFile("/media/sf_partage_ubuntu/OK-DORN-EP-Reference-Design-new-prj/Sources_NX/Memory/" + 'RAM_Generic_NOECC.vhd')
project.addFile("/media/sf_partage_ubuntu/OK-DORN-EP-Reference-Design-new-prj/Sources_NX/Memory/" + 'Module_FIFO.vhd')
project.addFile("/media/sf_partage_ubuntu/OK-DORN-EP-Reference-Design-new-prj/Sources_NX/Event_Processor/" + 'Filter_SLOW_coef.vhd')
project.addFile("/media/sf_partage_ubuntu/OK-DORN-EP-Reference-Design-new-prj/Sources_NX/Event_Processor/" + 'Filter_FAST_coef.vhd')
project.addFile("/media/sf_partage_ubuntu/OK-DORN-EP-Reference-Design-new-prj/Sources_NX/Event_Processor/" + 'Coeff_Table.vhd')
project.addFile("/media/sf_partage_ubuntu/OK-DORN-EP-Reference-Design-new-prj/Sources_NX/Event_Processor/" + 'divider.vhd')
project.addFile("/media/sf_partage_ubuntu/OK-DORN-EP-Reference-Design-new-prj/Sources_NX/Event_Processor/" + 'Energy_correction.vhd')
project.addFile("/media/sf_partage_ubuntu/OK-DORN-EP-Reference-Design-new-prj/Sources_NX/Event_Processor/" + 'Event_Processor.vhd')

################################################################################################
# Declare top entity
################################################################################################

project.setTopCellName('Event_Processor')
project.addParameter('G_MODE', '0')  # Synthesis mode
project.addParameter('G_VERSION', file_version)  # For TM_Status

################################################################################################
# NXmap Python3 OPTIONS
################################################################################################

options = {'Autosave': 'No',  # disable autosave multiple files
           'MappingEffort': 'High',
           'BypassingEffort': 'Low',
           'DefaultRAMMapping': 'RAM',
           'RoutingEffort': 'High',
           'ManageUnconnectedSignals': 'Error',
           'ManageUnconnectedOutputs': 'Error',
           'IgnoreRAMFlashClear': 'Yes',
           'UnusedPads': 'Floating',  # 'WeakPullUp',  # warning consumption
           'ManageAsynchronousReadPort': 'Yes'}
project.setOptions(options)

################################################################################################
# NanoXplore Synthesis
################################################################################################
project.createClock('getClockNet(i_CLOCK_100_MHZ)', 'CLK3', 10000)  # Period in ps


if not project.synthesize():
    sys.exit(1)

project.save('./work/synthesized.nym')