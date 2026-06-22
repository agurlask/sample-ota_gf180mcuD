import numpy as np
import matplotlib.pyplot as plt
from pygmid import Lookup as lk

NCH = lk('nfet_03v3.mat')
PCH = lk('pfet_03v3.mat')

delta = 1e-9

l_min = 0.24
l_max = 1
l_step = 0.06
l_arr = np.arange(l_min, l_max + delta, l_step)

gm_id_min = 5
gm_id_max = 25
gm_id_step = 0.2
gm_id_arr = np.arange(gm_id_min, gm_id_max + delta, gm_id_step)

vdd = 2
vds = vdd / 2
vbs = 0

# Lookup intrinsic gain (gm/gds) for NMOS and PMOS across GM_ID and L sweeps
gm_gds_n = np.zeros((len(gm_id_arr), len(l_arr)))
gm_gds_p = np.zeros((len(gm_id_arr), len(l_arr)))

for i, l in enumerate(l_arr):
    gm_gds_n[:, i] = NCH.lookup('GM_GDS', GM_ID=gm_id_arr, L=l, VDS=vds, VSB=-vbs)
    gm_gds_p[:, i] = PCH.lookup('GM_GDS', GM_ID=gm_id_arr, L=l, VDS=vds, VSB=-vbs)

# Convert to dB
gain_db_n = 20 * np.log10(gm_gds_n)
gain_db_p = 20 * np.log10(gm_gds_p)

# Plot NMOS
plt.figure(figsize=(8, 6))
for i, l in enumerate(l_arr):
    plt.plot(gm_id_arr, gain_db_n[:, i], label=f'L = {l:.2f} µm')
plt.xlabel('gm/Id (S/A)')
plt.ylabel('Intrinsic Gain (dB)')
plt.title('NMOS Intrinsic Gain vs gm/Id')
plt.legend(fontsize=8, ncol=2)
plt.grid(True)
plt.tight_layout()

# Plot PMOS
plt.figure(figsize=(8, 6))
for i, l in enumerate(l_arr):
    plt.plot(gm_id_arr, gain_db_p[:, i], label=f'L = {l:.2f} µm')
plt.xlabel('gm/Id (S/A)')
plt.ylabel('Intrinsic Gain (dB)')
plt.title('PMOS Intrinsic Gain vs gm/Id')
plt.legend(fontsize=8, ncol=2)
plt.grid(True)
plt.tight_layout()

plt.show()
