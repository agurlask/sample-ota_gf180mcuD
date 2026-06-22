v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 610 -340 610 0 {}
L 4 620 0 1020 0 {}
L 4 1020 -340 1020 0 {}
L 4 620 -340 1020 -340 {}
L 4 320 -400 440 -400 {}
L 4 440 -400 440 -260 {}
L 4 360 -260 440 -260 {}
L 4 320 -260 360 -260 {}
L 4 320 -400 320 -260 {}
L 4 320 -400 330 -400 {}
L 4 130 -710 140 -700 {}
L 4 140 -700 150 -710 {}
L 4 550 -710 560 -700 {}
L 4 560 -700 570 -710 {}
L 4 870 -710 880 -700 {}
L 4 880 -700 890 -710 {}
L 4 610 -340 620 -340 {}
L 4 610 0 620 0 {}
T {Ideal CM Sense} 750 -370 0 0 0.4 0.4 {}
T {Ideal Op Amp} 310 -250 0 0 0.4 0.4 {}
T {260 uA} 900 -720 0 0 0.2 0.2 {}
T {30 uA} 580 -710 0 0 0.2 0.2 {}
T {10 uA} 160 -710 0 0 0.2 0.2 {}
N 560 -440 560 -400 {lab=vss}
N 560 -400 880 -400 {lab=vss}
N 880 -490 880 -400 {lab=vss}
N 500 -630 780 -630 {lab=i_bias}
N 380 -630 500 -630 {lab=i_bias}
N 560 -740 560 -680 {lab=vdd}
N 560 -740 880 -740 {lab=vdd}
N 880 -740 880 -690 {lab=vdd}
N 460 -560 500 -560 {lab=vin_n}
N 620 -530 700 -530 {lab=#net1}
N 700 -540 700 -530 {lab=#net1}
N 700 -540 780 -540 {lab=#net1}
N 380 -500 500 -500 {lab=vcmfb}
N 500 -530 560 -530 {lab=#net2}
N 560 -530 560 -520 {lab=#net2}
N 560 -520 1000 -520 {lab=#net2}
N 1000 -540 1000 -520 {lab=#net2}
N 980 -540 1000 -540 {lab=#net2}
N 740 -590 780 -590 {lab=vout_p}
N 980 -590 1020 -590 {lab=vout_n}
N 730 -590 740 -590 {lab=vout_p}
N 1020 -590 1030 -590 {lab=vout_n}
N 450 -560 460 -560 {lab=vin_n}
N 620 -560 670 -560 {lab=vin_p}
N 380 -380 380 -370 {lab=vcmfb}
N 920 -250 970 -250 {lab=vout_p}
N 920 -210 970 -210 {lab=vss}
N 920 -110 970 -110 {lab=vout_n}
N 920 -70 970 -70 {lab=vss}
N 880 -200 880 -170 {lab=vss}
N 880 -60 880 -30 {lab=vss}
N 710 -280 880 -280 {lab=vout_p_div2}
N 880 -150 880 -120 {lab=vout_n_div2_inv}
N 710 -150 880 -150 {lab=vout_n_div2_inv}
N 380 -310 380 -280 {lab=vss}
N 380 -480 380 -450 {lab=vcmfb}
N 380 -500 380 -480 {lab=vcmfb}
N 670 -300 670 -290 {lab=vocm_meas}
N 710 -240 710 -230 {lab=vout_n_div2_inv}
N 670 -230 670 -200 {lab=vss}
N 880 -280 880 -260 {lab=vout_p_div2}
N 710 -230 710 -150 {lab=vout_n_div2_inv}
N 420 -320 630 -320 {lab=vocm_meas}
N 420 -360 490 -360 {lab=vocm_set}
N 630 -320 660 -320 {lab=vocm_meas}
N 660 -320 670 -320 {lab=vocm_meas}
N 670 -320 670 -300 {lab=vocm_meas}
N 380 -450 380 -380 {lab=vcmfb}
N 180 -630 380 -630 {lab=i_bias}
N 140 -600 140 -540 {lab=i_bias}
N 140 -740 560 -740 {lab=vdd}
N 140 -740 140 -660 {lab=vdd}
N 140 -580 220 -580 {lab=i_bias}
N 220 -630 220 -580 {lab=i_bias}
N 120 -630 140 -630 {lab=vdd}
N 120 -680 120 -630 {lab=vdd}
N 120 -680 140 -680 {lab=vdd}
N 490 -360 520 -360 {lab=vocm_set}
C {input_stage/input_stage.sym} 560 -440 0 0 {name=x1}
C {output_stage/output_stage.sym} 780 -490 0 0 {name=x2}
C {lab_wire.sym} 730 -590 0 1 {name=p1 sig_type=std_logic lab=vout_p}
C {lab_wire.sym} 1030 -590 0 0 {name=p2 sig_type=std_logic lab=vout_n}
C {lab_wire.sym} 670 -560 0 0 {name=p3 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} 450 -560 0 1 {name=p4 sig_type=std_logic lab=vin_n}
C {lab_wire.sym} 720 -740 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 720 -400 0 0 {name=p6 sig_type=std_logic lab=vss}
C {vcvs.sym} 380 -340 0 1 {name=E1 value=100}
C {vcvs.sym} 880 -230 0 1 {name=E2 value=0.5}
C {lab_wire.sym} 970 -250 0 0 {name=p30 sig_type=std_logic lab=vout_p}
C {lab_wire.sym} 970 -210 0 0 {name=p31 sig_type=std_logic lab=vss}
C {vcvs.sym} 880 -90 0 1 {name=E3 value=-0.5}
C {lab_wire.sym} 970 -110 0 0 {name=p32 sig_type=std_logic lab=vout_n}
C {lab_wire.sym} 970 -70 0 0 {name=p33 sig_type=std_logic lab=vss}
C {lab_wire.sym} 880 -170 3 1 {name=p34 sig_type=std_logic lab=vss}
C {lab_wire.sym} 880 -30 3 1 {name=p35 sig_type=std_logic lab=vss}
C {lab_wire.sym} 380 -280 3 1 {name=p36 sig_type=std_logic lab=vss}
C {lab_wire.sym} 420 -500 0 1 {name=p37 sig_type=std_logic lab=vcmfb}
C {vcvs.sym} 670 -260 0 1 {name=E4 value=1}
C {lab_wire.sym} 670 -200 3 1 {name=p38 sig_type=std_logic lab=vss}
C {lab_wire.sym} 520 -360 0 0 {name=p39 sig_type=std_logic lab=vocm_set}
C {symbols/pfet_03v3.sym} 160 -630 0 1 {name=M1
L=0.54u
W=3u
nf=1
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
C {lab_wire.sym} 140 -540 3 1 {name=p7 sig_type=std_logic lab=i_bias}
C {iopin.sym} 140 -500 0 0 {name=p8 lab=vdd}
C {iopin.sym} 140 -460 0 0 {name=p9 lab=vss}
C {iopin.sym} 140 -420 0 0 {name=p10 lab=vin_p}
C {iopin.sym} 140 -380 0 0 {name=p11 lab=vin_n}
C {iopin.sym} 140 -340 0 0 {name=p12 lab=vout_p}
C {iopin.sym} 140 -300 0 0 {name=p13 lab=vout_n}
C {iopin.sym} 140 -260 0 0 {name=p14 lab=vocm_set}
C {iopin.sym} 140 -220 0 0 {name=p15 lab=i_bias}
C {lab_wire.sym} 840 -280 0 0 {name=p16 sig_type=std_logic lab=vout_p_div2}
C {lab_wire.sym} 840 -150 0 0 {name=p17 sig_type=std_logic lab=vout_n_div2_inv}
C {lab_wire.sym} 530 -320 0 0 {name=p18 sig_type=std_logic lab=vocm_meas}
