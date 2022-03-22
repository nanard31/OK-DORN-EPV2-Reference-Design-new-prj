import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from scipy.interpolate import KroghInterpolator

from scipy.interpolate import CubicSpline

def twos_comp(val, bits):
    """compute the 2's complement of int value val"""
    if (val & (1 << (bits - 1))) != 0: # if sign bit is set e.g., 8bit: 128-255
        val = val - (1 << bits)        # compute negative value
    return val                         # return positive value as is

fig, axs = plt.subplots(2, 3)

# make a little extra space between the subplots

fig.subplots_adjust(hspace=0.5)

dt = 0.01

t = np.arange(0, 30, dt)

pulse_data = pd.read_csv('gauss1_25_2.csv')

columns = ["delay", "Energy", "Energy32", "A", "B", "Phi"]
banana_data =  pd.read_csv('banana_results.txt', usecols=columns, sep=';')

axs[0, 0].plot(pulse_data)
axs[0, 0].grid(True)
axs[0, 0].set_title('Pulse')

axs[0, 1].plot(banana_data.delay, banana_data.Phi)
axs[0, 1].grid(True)
axs[0, 1].set_title('Phi / Delay')

axs[0, 2].grid(True)
axs[0, 2].set_title('BBB')

axs[1, 0].plot(banana_data.Phi, banana_data.A)
axs[1, 0].grid(True)
axs[1, 0].set_title('A')

axs[1, 1].plot(banana_data.Phi, banana_data.B)
axs[1, 1].grid(True)
axs[1, 1].set_title('B')

axs[1, 2].plot(banana_data.Phi, banana_data.Energy32/(2048*8))
axs[1, 2].grid(True)
axs[1, 2].set_title('Energie')

print(banana_data.Energy32)
#
# Compute coefs
#

ETh = np.amax(banana_data.Energy32)

EC_Coefs = 65536 * ETh / banana_data.Energy32;

PhiMax = np.amax(banana_data.Phi)
PhiMin = np.amin(banana_data.Phi)

PHi_Adr = banana_data.Phi/8192


x_debug = np.linspace(-100,100,200)
spl = CubicSpline( np.flip(PHi_Adr), np.flip(EC_Coefs),bc_type='natural')

print( PHi_Adr)
axs[0, 2].plot(PHi_Adr, EC_Coefs, 'ro')
axs[0, 2].plot(x_debug, spl(x_debug))
axs[0, 2].grid(True)
axs[0, 2].set_title('Coefs')



#
#  Energy coefs RAM content generation
#

#for a in range(1024):
for a in range(128):
    if int(spl(a) ) >= 131071:
        print(a, 131071,",")
    else:
        print(a, int( spl(a) ),",")

for a in range(128,256):
    if int( spl(twos_comp(a,8))) < 0:
        print(a, 131071, ",")
    else:
        print(a, int( spl(twos_comp(a,8) ) ),",")
for a in PHi_Adr:
    print(a, spl(a), ",")

# figManager = plt.get_current_fig_manager()
# figManager.window.showMaximized()

plt.show()