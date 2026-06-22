v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 360 -280 370 -270 {}
L 4 370 -270 380 -280 {}
L 4 620 -280 630 -270 {}
L 4 630 -270 640 -280 {}
A 4 437.5 10 240.6371750166628 94.17043652484212 25.05761541830303 {}
A 4 562.5 10 240.6371750166628 60.77194805685484 25.05761541830303 {}
T {130 uA} 390 -280 0 0 0.2 0.2 {}
T {130 uA} 650 -280 0 0 0.2 0.2 {}
T {2 fF/um^2 * (125 um^2) 
= 250 fF} 440 -240 0 0 0.2 0.2 {}
N 370 -70 370 -50 {lab=vss}
N 370 -50 630 -50 {lab=vss}
N 630 -70 630 -50 {lab=vss}
N 370 -100 400 -100 {lab=vss}
N 400 -100 400 -50 {lab=vss}
N 600 -100 630 -100 {lab=vss}
N 600 -100 600 -50 {lab=vss}
N 370 -290 370 -130 {lab=vout_n}
N 630 -290 630 -130 {lab=vout_p}
N 370 -390 370 -350 {lab=vdd}
N 370 -390 630 -390 {lab=vdd}
N 630 -390 630 -350 {lab=vdd}
N 370 -320 400 -320 {lab=vdd}
N 400 -370 400 -320 {lab=vdd}
N 370 -370 400 -370 {lab=vdd}
N 630 -320 660 -320 {lab=vdd}
N 660 -370 660 -320 {lab=vdd}
N 630 -370 660 -370 {lab=vdd}
N 310 -130 310 -100 {lab=vin_p}
N 310 -100 330 -100 {lab=vin_p}
N 310 -190 370 -190 {lab=vout_n}
N 690 -130 690 -100 {lab=vin_n}
N 670 -100 690 -100 {lab=vin_n}
N 630 -190 690 -190 {lab=vout_p}
N 250 -100 310 -100 {lab=vin_p}
N 690 -100 750 -100 {lab=vin_n}
N 250 -240 370 -240 {lab=vout_n}
N 630 -240 760 -240 {lab=vout_p}
N 320 -440 320 -320 {lab=load_bias}
N 290 -320 330 -320 {lab=load_bias}
N 250 -320 290 -320 {lab=load_bias}
N 320 -440 560 -440 {lab=load_bias}
N 590 -440 590 -320 {lab=load_bias}
N 560 -440 590 -440 {lab=load_bias}
C {symbols/nfet_03v3.sym} 350 -100 0 0 {name=M1
L=0.54u
W=32.6u
nf=10
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 350 -320 0 0 {name=M2
L=0.54u
W=39u
nf=13
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/cap_mim_2f0fF.sym} 310 -160 0 1 {name=C2
W=12.5e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 690 -160 0 0 {name=C1
W=12.5e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {lab_wire.sym} 500 -390 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 510 -50 0 0 {name=p2 sig_type=std_logic lab=vss}
C {lab_wire.sym} 250 -100 0 1 {name=p3 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} 750 -100 0 0 {name=p4 sig_type=std_logic lab=vin_n}
C {lab_wire.sym} 250 -240 0 1 {name=p5 sig_type=std_logic lab=vout_n}
C {lab_wire.sym} 760 -240 0 0 {name=p6 sig_type=std_logic lab=vout_p}
C {lab_wire.sym} 250 -320 0 1 {name=p7 sig_type=std_logic lab=load_bias}
C {symbols/pfet_03v3.sym} 610 -320 0 0 {name=M4
L=0.54u
W=39u
nf=13
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 650 -100 0 1 {name=M3
L=0.54u
W=32.6u
nf=10
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {iopin.sym} 60 -340 0 0 {name=p8 lab=vdd}
C {iopin.sym} 60 -300 0 0 {name=p9 lab=vss}
C {iopin.sym} 60 -260 0 0 {name=p10 lab=vin_p}
C {iopin.sym} 60 -220 0 0 {name=p11 lab=vin_n}
C {iopin.sym} 60 -180 0 0 {name=p12 lab=vout_p}
C {iopin.sym} 60 -140 0 0 {name=p13 lab=vout_n}
C {iopin.sym} 60 -100 0 0 {name=p14 lab=load_bias}
