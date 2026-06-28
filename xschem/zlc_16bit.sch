v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 220 -280 260 -280 {lab=#net1}
N 190 -70 250 -70 {lab=#net2}
N 370 -90 410 -90 {lab=#net3}
N 530 -110 560 -110 {lab=#net4}
N 380 -170 410 -130 {lab=#net5}
N 890 -490 970 -450 {lab=#net6}
N 890 -370 970 -410 {lab=#net7}
N 890 -230 970 -190 {lab=#net8}
N 890 -110 970 -150 {lab=#net9}
C {lab_pin.sym} -110 -350 0 1 {name=p5 lab=Z3[2:0]}
C {sky130_stdcells/and4_1.sym} 190 -460 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 130 -520 0 0 {name=p3 sig_type=std_logic lab=Z3[2]}
C {lab_wire.sym} 130 -480 0 0 {name=p10 sig_type=std_logic lab=Z2[2]}
C {lab_wire.sym} 130 -440 0 0 {name=p11 sig_type=std_logic lab=Z1[2]}
C {lab_wire.sym} 130 -400 0 0 {name=p12 sig_type=std_logic lab=Z0[2]}
C {sky130_stdcells/nand2_1.sym} 160 -280 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 100 -300 0 0 {name=p16 sig_type=std_logic lab=Z1[2]}
C {lab_wire.sym} 100 -260 0 0 {name=p17 sig_type=std_logic lab=Z0[2]}
C {sky130_stdcells/and3_1.sym} 320 -320 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 260 -320 0 0 {name=p18 sig_type=std_logic lab=Z2[2]}
C {lab_wire.sym} 260 -360 0 0 {name=p19 sig_type=std_logic lab=Z3[2]}
C {sky130_stdcells/inv_1.sym} 150 -70 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 340 -170 0 0 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_1.sym} 620 -130 0 0 {name=x10 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/or2_1.sym} 470 -110 0 0 {name=x11 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_1.sym} 310 -90 0 0 {name=x12 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 110 -70 0 0 {name=p21 sig_type=std_logic lab=Z0[2]}
C {lab_wire.sym} 300 -170 0 0 {name=p22 sig_type=std_logic lab=Z2[2]}
C {lab_wire.sym} 250 -110 0 0 {name=p23 sig_type=std_logic lab=Z1[2]}
C {lab_wire.sym} 560 -150 0 0 {name=p24 sig_type=std_logic lab=Z3[2]}
C {sky130_stdcells/mux2_1.sym} 850 -490 0 0 {name=x13 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 810 -430 0 0 {name=p26 sig_type=std_logic lab=Y[2]}
C {lab_wire.sym} 810 -510 0 0 {name=p27 sig_type=std_logic lab=Z3[1]}
C {lab_wire.sym} 810 -470 0 0 {name=p28 sig_type=std_logic lab=Z2[1]}
C {sky130_stdcells/mux2_1.sym} 850 -370 0 0 {name=x14 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 810 -310 0 0 {name=p29 sig_type=std_logic lab=Y[2]}
C {lab_wire.sym} 810 -390 0 0 {name=p30 sig_type=std_logic lab=Z1[1]}
C {lab_wire.sym} 810 -350 0 0 {name=p31 sig_type=std_logic lab=Z0[1]}
C {sky130_stdcells/mux2_1.sym} 1010 -430 0 0 {name=x15 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 970 -370 0 0 {name=p32 sig_type=std_logic lab=Y[3]}
C {sky130_stdcells/mux2_1.sym} 850 -230 0 0 {name=x16 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 810 -170 0 0 {name=p34 sig_type=std_logic lab=Y[2]}
C {lab_wire.sym} 810 -250 0 0 {name=p35 sig_type=std_logic lab=Z3[0]}
C {lab_wire.sym} 810 -210 0 0 {name=p36 sig_type=std_logic lab=Z2[0]}
C {sky130_stdcells/mux2_1.sym} 850 -110 0 0 {name=x17 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 810 -50 0 0 {name=p37 sig_type=std_logic lab=Y[2]}
C {lab_wire.sym} 810 -130 0 0 {name=p38 sig_type=std_logic lab=Z1[0]}
C {lab_wire.sym} 810 -90 0 0 {name=p39 sig_type=std_logic lab=Z0[0]}
C {sky130_stdcells/mux2_1.sym} 1010 -170 0 0 {name=x18 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {lab_wire.sym} 970 -110 0 0 {name=p40 sig_type=std_logic lab=Y[3]}
C {ipin.sym} -160 -480 0 0 {name=p42 lab=VDD}
C {ipin.sym} -160 -420 0 0 {name=p43 lab=GND}
C {lab_wire.sym} 1050 -170 0 1 {name=p44 lab=Y[0]}
C {lab_wire.sym} 1050 -430 0 1 {name=p33 lab=Y[1]}
C {lab_wire.sym} 250 -460 0 1 {name=p15 lab=Y[4]}
C {lab_wire.sym} 380 -320 0 1 {name=p20 lab=Y[3]}
C {lab_wire.sym} 680 -130 0 1 {name=p25 lab=Y[2]}
C {zlc_4bit.sym} -260 -330 0 0 {name=x1}
C {zlc_4bit.sym} -260 -240 0 0 {name=x2}
C {zlc_4bit.sym} -260 -150 0 0 {name=x3}
C {zlc_4bit.sym} -260 -70 0 0 {name=x4}
C {lab_wire.sym} -280 -350 0 0 {name=p1 lab=A[15:12]}
C {lab_wire.sym} -280 -260 0 0 {name=p2 lab=A[11:8]}
C {lab_wire.sym} -280 -170 0 0 {name=p4 lab=A[7:4]}
C {lab_wire.sym} -280 -90 0 0 {name=p9 lab=A[3:0]}
C {lab_pin.sym} -110 -260 0 1 {name=p6 lab=Z2[2:0]}
C {lab_pin.sym} -110 -170 0 1 {name=p7 lab=Z1[2:0]}
C {lab_pin.sym} -110 -90 0 1 {name=p8 lab=Z0[2:0]}
C {lab_wire.sym} -280 -330 0 0 {name=p41 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -280 -240 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -280 -150 0 0 {name=p46 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -280 -70 0 0 {name=p47 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -280 -310 0 0 {name=p48 sig_type=std_logic lab=GND}
C {lab_wire.sym} -280 -220 0 0 {name=p49 sig_type=std_logic lab=GND}
C {lab_wire.sym} -280 -130 0 0 {name=p50 sig_type=std_logic lab=GND}
C {lab_wire.sym} -280 -50 0 0 {name=p51 sig_type=std_logic lab=GND}
C {ipin.sym} -160 -530 0 0 {name=p13 lab=A[15:0]}
C {opin.sym} -110 -530 0 0 {name=p14 lab=Y[4:0]}
