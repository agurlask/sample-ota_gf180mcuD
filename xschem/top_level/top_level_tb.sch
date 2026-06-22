v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 630 -440 750 -440 {lab=vout_p}
N 750 -440 750 -340 {lab=vout_p}
N 630 -360 670 -360 {lab=vout_n}
N 670 -360 670 -340 {lab=vout_n}
N 670 -280 670 -240 {lab=vss}
N 670 -240 750 -240 {lab=vss}
N 750 -280 750 -240 {lab=vss}
N 540 -340 540 -300 {lab=ib}
N 510 -320 510 -300 {lab=vss}
N 510 -300 510 -280 {lab=vss}
N 540 -240 540 -200 {lab=vss}
N 510 -520 510 -480 {lab=vdd}
N 410 -440 510 -440 {lab=vin_p}
N 410 -360 510 -360 {lab=vin_n}
N 370 -400 510 -400 {lab=vocm_set}
N 370 -400 370 -380 {lab=vocm_set}
N 370 -320 370 -280 {lab=vss}
N 160 -180 160 -160 {lab=vss}
N 160 -160 160 -140 {lab=vss}
N 160 -280 160 -240 {lab=vin_cm}
N 100 -280 160 -280 {lab=vin_cm}
N 100 -300 100 -280 {lab=vin_cm}
N 160 -280 170 -280 {lab=vin_cm}
N 170 -280 200 -280 {lab=vin_cm}
N 200 -300 200 -280 {lab=vin_cm}
N 100 -400 100 -360 {lab=vin_p}
N 200 -400 200 -360 {lab=vin_n}
N 510 -70 510 -50 {lab=vss}
N 510 -170 510 -130 {lab=vdd}
N 510 -50 510 -30 {lab=vss}
N 410 -70 410 -30 {lab=0}
N 410 -170 410 -130 {lab=vss}
C {top_level/top_level.sym} 510 -320 0 0 {name=x1}
C {capa.sym} 670 -310 0 0 {name=C1
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 750 -310 0 0 {name=C2
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {isource.sym} 540 -270 0 0 {name=I0 value=10u}
C {lab_wire.sym} 510 -280 3 1 {name=p1 sig_type=std_logic lab=vss}
C {lab_wire.sym} 700 -240 0 1 {name=p2 sig_type=std_logic lab=vss}
C {lab_wire.sym} 540 -200 3 1 {name=p3 sig_type=std_logic lab=vss}
C {lab_wire.sym} 510 -520 3 0 {name=p4 sig_type=std_logic lab=vdd}
C {vsource.sym} 370 -350 0 1 {name=V1 value=1 savecurrent=false}
C {lab_wire.sym} 370 -280 3 1 {name=p5 sig_type=std_logic lab=vss}
C {lab_wire.sym} 410 -440 0 1 {name=p6 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} 410 -360 0 1 {name=p7 sig_type=std_logic lab=vin_n}
C {lab_wire.sym} 670 -440 0 0 {name=p8 sig_type=std_logic lab=vout_p}
C {lab_wire.sym} 670 -360 0 0 {name=p9 sig_type=std_logic lab=vout_n}
C {vsource.sym} 160 -210 0 0 {name=V3 value=\{vin_cm\} savecurrent=false}
C {lab_wire.sym} 160 -140 3 1 {name=p27 sig_type=std_logic lab=vss}
C {vsource.sym} 100 -330 0 1 {name=V5 value="DC 0 AC 0.5 0" savecurrent=false}
C {lab_wire.sym} 100 -400 3 0 {name=p28 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} 200 -400 3 0 {name=p29 sig_type=std_logic lab=vin_n}
C {vsource.sym} 200 -330 0 0 {name=V4 value="DC 0 AC 0.5 180" savecurrent=false}
C {vsource.sym} 510 -100 0 0 {name=V2 value=2 savecurrent=false}
C {lab_wire.sym} 510 -30 3 1 {name=p24 sig_type=std_logic lab=vss}
C {lab_wire.sym} 510 -170 3 0 {name=p25 sig_type=std_logic lab=vdd}
C {vsource.sym} 410 -100 0 0 {name=V6 value=0 savecurrent=false}
C {lab_wire.sym} 410 -170 3 0 {name=p26 sig_type=std_logic lab=vss}
C {gnd.sym} 410 -30 0 0 {name=l1 lab=0}
C {code_shown.sym} 410 -1060 0 0 {name=s1 only_toplevel=false value=".param vin_cm=0.8
.param vout_cm=1
.control
save all
save @m.x1.x1.xm1.m0[gm] @m.x1.x1.xm1.m0[gds] @m.x1.x1.xm1.m0[id]
save @m.x1.x1.xm3.m0[gm] @m.x1.x1.xm3.m0[gds] @m.x1.x1.xm3.m0[id]
save @m.x1.x1.xm5.m0[gm] @m.x1.x1.xm5.m0[gds] @m.x1.x1.xm5.m0[id]
save @m.x1.x2.xm1.m0[gm] @m.x1.x2.xm1.m0[gds] @m.x1.x2.xm1.m0[id]
save @m.x1.x2.xm2.m0[gm] @m.x1.x2.xm2.m0[gds] @m.x1.x2.xm2.m0[id]

op
write output_op.raw
ac dec 10 1 1G

setplot ac1
let vdiff = v(vout_p) - v(vout_n)
write output.raw
.endc"}
C {devices/code_shown.sym} 0 -660 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
C {lab_wire.sym} 180 -280 0 0 {name=p10 sig_type=std_logic lab=vin_cm}
C {lab_wire.sym} 540 -330 1 1 {name=p11 sig_type=std_logic lab=ib}
C {lab_wire.sym} 470 -400 0 0 {name=p12 sig_type=std_logic lab=vocm_set}
