import numpy as np
import matplotlib.pyplot as plt
from pygmid import Lookup as lk

NCH = lk('nfet_03v3.mat')
PCH = lk('pfet_03v3.mat')

l = 0.54
vdd = 2
cload = 500e-15
ugbw = 2*np.pi*100e6
nondom_pole = 3 * 1.4 * ugbw
gm_input = nondom_pole * cload
vds = vdd / 2
vsb = 0

gm_id_input = 10

id_input = (gm_input/gm_id_input)
id_w_input = NCH.lookup('ID_W', GM_ID=gm_id_input, VDS=vds, VSB=vsb, L=l)
w_input = id_input / id_w_input
cdd_w_input = NCH.lookup('CDD_W', GM_ID=gm_id_input, VDS=vds, VSB=vsb, L=l)
print(f'Input Width: {w_input}')

gm_id_load = 6

id_load = id_input
id_w_load = PCH.lookup('ID_W', GM_ID=gm_id_load, VDS=vds, VSB=vsb, L=l)
w_load = id_load / id_w_load
cdd_w_load = PCH.lookup('CDD_W', GM_ID=gm_id_load, VDS=vds, VSB=vsb, L=l)
print(f'Load Width: {w_load}')

cpar = cdd_w_input*w_input + cdd_w_load*w_load
print(f'Parasitic Cload = {cpar}')



id_bias = id_input
print(f'Bias Current: {id_bias}')
