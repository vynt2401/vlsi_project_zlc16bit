v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -660 -210 -620 -210 {lab=#net1}
N -500 -190 -450 -190 {lab=#net2}
N -330 -170 -290 -230 {lab=#net3}
N -690 -290 -290 -270 {lab=#net4}
N -660 -490 -580 -470 {lab=#net5}
N -660 -380 -580 -430 {lab=#net6}
C {sky130_stdcells/nor4_1.sym} -720 -650 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nor2_1.sym} -720 -490 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/or2_1.sym} -720 -380 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_1.sym} -520 -450 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} -730 -290 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_1.sym} -560 -190 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/or2_1.sym} -390 -170 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_1.sym} -230 -250 0 0 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {ipin.sym} -1060 -580 0 0 {name=p1 lab=A[3:0]}
C {opin.sym} -1020 -580 0 0 {name=p15 lab=Z[2:0]}
C {lab_wire.sym} -780 -710 0 0 {name=p2 sig_type=std_logic lab=A[3]}
C {lab_wire.sym} -780 -670 0 0 {name=p3 sig_type=std_logic lab=A[2]}
C {lab_wire.sym} -780 -630 0 0 {name=p4 sig_type=std_logic lab=A[1]}
C {lab_wire.sym} -780 -590 0 0 {name=p5 sig_type=std_logic lab=A[0]}
C {lab_wire.sym} -660 -650 0 1 {name=p6 sig_type=std_logic lab=Z[2]}
C {lab_wire.sym} -460 -450 0 1 {name=p7 sig_type=std_logic lab=Z[1]}
C {lab_wire.sym} -170 -250 0 1 {name=p8 sig_type=std_logic lab=Z[0]}
C {lab_wire.sym} -780 -510 0 0 {name=p9 sig_type=std_logic lab=A[3]}
C {lab_wire.sym} -770 -290 0 0 {name=p10 sig_type=std_logic lab=A[3]}
C {lab_wire.sym} -780 -470 0 0 {name=p11 sig_type=std_logic lab=A[2]}
C {lab_wire.sym} -450 -150 0 0 {name=p13 sig_type=std_logic lab=A[2]}
C {lab_wire.sym} -780 -400 0 0 {name=p14 sig_type=std_logic lab=A[1]}
C {lab_wire.sym} -740 -210 0 0 {name=p16 sig_type=std_logic lab=A[1]}
C {lab_wire.sym} -780 -360 0 0 {name=p17 sig_type=std_logic lab=A[0]}
C {lab_wire.sym} -620 -170 0 0 {name=p18 sig_type=std_logic lab=A[0]}
C {ipin.sym} -1070 -500 0 0 {name=p42 lab=VDD}
C {ipin.sym} -1070 -440 0 0 {name=p43 lab=GND}
C {sky130_stdcells/inv_1.sym} -700 -210 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
