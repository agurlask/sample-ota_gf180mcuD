import numpy as np
import matplotlib.pyplot as plt
from pygmid import Lookup as lk

NCH = lk('nfet_03v3.mat')
PCH = lk('pfet_03v3.mat')

l = 0.36
cc = 250e-15
ugbw = 2*np.pi*100e6
overshoot = 1.4
gm_input = cc * ugbw * overshoot
vdd = 2
vds = vdd / 2
vsb = 0

gm_id_input = 15

id_input = (gm_input/gm_id_input)
id_w_input = PCH.lookup('ID_W', GM_ID=gm_id_input, VDS=vds, VSB=vsb, L=l)
w_input = id_input / id_w_input
gm_gds_input = PCH.lookup('GM_GDS', GM_ID=gm_id_input, VDS=vds, VSB=vsb, L=l)
print(f'Input Width: {w_input}')
print(f'Input gm: {gm_input}')
print(f'Input gds: {gm_input / gm_gds_input}')
gm_id_load = 8

id_load = id_input
id_w_load = NCH.lookup('ID_W', GM_ID=gm_id_load, VDS=vds, VSB=vsb, L=l)
w_load = id_load / id_w_load
gm_gds_load = NCH.lookup('GM_GDS', GM_ID=gm_id_input, VDS=vds, VSB=vsb, L=l)
gm_load = id_load * gm_id_load
print(f'Load Width: {w_load}')
print(f'Load gm: {gm_load}')
print(f'Load gds: {gm_load / gm_gds_load}')

id_tail = id_input*2
print(f'Tail Current: {id_tail}')
