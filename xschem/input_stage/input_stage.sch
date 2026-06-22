v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 350 -600 360 -590 {}
L 4 360 -590 370 -600 {}
T {Itail=30 uA} 280 -600 0 0 0.2 0.2 {}
N 200 -420 200 -180 {lab=vout_p}
N 540 -420 540 -180 {lab=vout_n}
N 200 -540 200 -480 {lab=vtail}
N 200 -540 540 -540 {lab=vtail}
N 540 -540 540 -480 {lab=vtail}
N 360 -640 360 -540 {lab=vtail}
N 200 -450 230 -450 {lab=vtail}
N 230 -500 230 -450 {lab=vtail}
N 200 -500 230 -500 {lab=vtail}
N 500 -450 540 -450 {lab=vtail}
N 500 -500 500 -450 {lab=vtail}
N 500 -500 540 -500 {lab=vtail}
N 200 -120 200 -80 {lab=vss}
N 540 -120 540 -80 {lab=vss}
N 200 -80 540 -80 {lab=vss}
N 100 -450 160 -450 {lab=vin_n}
N 580 -450 640 -450 {lab=vin_p}
N 100 -150 160 -150 {lab=load_bias}
N 440 -150 500 -150 {lab=load_bias}
N 440 -150 440 -50 {lab=load_bias}
N 140 -50 440 -50 {lab=load_bias}
N 140 -150 140 -50 {lab=load_bias}
N 200 -150 230 -150 {lab=vss}
N 230 -150 230 -80 {lab=vss}
N 540 -150 570 -150 {lab=vss}
N 570 -150 570 -80 {lab=vss}
N 540 -80 570 -80 {lab=vss}
N 360 -670 390 -670 {lab=vdd}
N 390 -720 390 -670 {lab=vdd}
N 360 -720 390 -720 {lab=vdd}
N 360 -720 360 -700 {lab=vdd}
N 80 -150 100 -150 {lab=load_bias}
N 180 -670 320 -670 {lab=tail_bias}
C {symbols/nfet_03v3.sym} 180 -150 0 0 {name=M1
L=0.36u
W=1.5u
nf=1
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
C {symbols/nfet_03v3.sym} 520 -150 0 0 {name=M2
L=0.36u
W=1.5u
nf=1
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
C {symbols/pfet_03v3.sym} 180 -450 0 0 {name=M3
L=0.36u
W=23u
nf=8
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
C {symbols/pfet_03v3.sym} 340 -670 0 0 {name=M5
L=0.54u
W=9u
nf=3
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
C {lab_wire.sym} 390 -720 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 410 -540 0 0 {name=p2 sig_type=std_logic lab=vtail}
C {lab_wire.sym} 200 -280 3 1 {name=p3 sig_type=std_logic lab=vout_p}
C {lab_wire.sym} 540 -280 3 1 {name=p4 sig_type=std_logic lab=vout_n}
C {lab_wire.sym} 100 -450 0 1 {name=p5 sig_type=std_logic lab=vin_n}
C {lab_wire.sym} 640 -450 0 0 {name=p6 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} 80 -150 0 1 {name=p7 sig_type=std_logic lab=load_bias}
C {lab_wire.sym} 180 -670 0 1 {name=p9 sig_type=std_logic lab=tail_bias}
C {iopin.sym} 760 -630 0 0 {name=p8 lab=vin_p}
C {iopin.sym} 760 -590 0 0 {name=p10 lab=vin_n}
C {iopin.sym} 760 -550 0 0 {name=p11 lab=vout_p}
C {iopin.sym} 760 -510 0 0 {name=p12 lab=vout_n}
C {iopin.sym} 760 -470 0 0 {name=p13 lab=vdd}
C {lab_wire.sym} 350 -80 0 0 {name=p14 sig_type=std_logic lab=vss}
C {iopin.sym} 760 -430 0 0 {name=p15 lab=vss}
C {symbols/pfet_03v3.sym} 560 -450 0 1 {name=M4
L=0.36u
W=23u
nf=8
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
C {iopin.sym} 900 -630 0 0 {name=p16 lab=tail_bias}
C {iopin.sym} 900 -590 0 0 {name=p17 lab=load_bias}
