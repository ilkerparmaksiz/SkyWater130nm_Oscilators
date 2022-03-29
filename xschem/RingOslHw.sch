v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 280 -280 440 -280 {
lab=VCC}
N 440 -280 600 -280 {
lab=VCC}
N 500 -250 520 -250 {
lab=#net1}
N 520 -250 520 -240 {
lab=#net1}
N 520 -240 550 -240 {
lab=#net1}
N 500 -220 550 -220 {
lab=#net2}
N 550 -200 550 -190 {
lab=PD}
N 390 -190 550 -190 {
lab=PD}
N 390 -200 390 -190 {
lab=PD}
N 210 -190 390 -190 {
lab=PD}
N 210 -200 210 -190 {
lab=PD}
N 230 -270 230 -260 {
lab=VCTRL}
N 230 -270 390 -270 {
lab=VCTRL}
N 390 -270 390 -260 {
lab=VCTRL}
N 390 -270 550 -270 {
lab=VCTRL}
N 550 -270 550 -260 {
lab=VCTRL}
N 340 -250 360 -250 {
lab=#net3}
N 360 -250 360 -240 {
lab=#net3}
N 360 -240 390 -240 {
lab=#net3}
N 340 -220 390 -220 {
lab=#net4}
N 210 -240 230 -240 {
lab=VOP}
N 210 -220 230 -220 {
lab=VON}
N 180 -260 230 -260 {
lab=VCTRL}
N 660 -250 690 -250 {
lab=VOP}
N 90 -240 210 -240 {
lab=VOP}
N 90 -330 90 -240 {
lab=VOP}
N 90 -330 620 -330 {
lab=VOP}
N 620 -330 750 -330 {
lab=VOP}
N 750 -330 750 -250 {
lab=VOP}
N 690 -250 750 -250 {
lab=VOP}
N 90 -220 210 -220 {
lab=VON}
N 90 -220 90 -150 {
lab=VON}
N 90 -150 660 -150 {
lab=VON}
N 660 -150 730 -150 {
lab=VON}
N 730 -220 730 -150 {
lab=VON}
N 680 -220 730 -220 {
lab=VON}
N 660 -220 680 -220 {
lab=VON}
N 210 -200 230 -200 {
lab=PD}
N 190 -200 210 -200 {
lab=PD}
N 280 -180 440 -180 {
lab=VSS}
N 440 -180 600 -180 {
lab=VSS}
N 280 -290 350 -290 {
lab=VCC}
N 350 -290 350 -280 {
lab=VCC}
N 260 -170 310 -170 {
lab=VSS}
N 310 -180 310 -170 {
lab=VSS}
N 730 -200 750 -200 {
lab=VON}
N 750 -260 780 -260 {
lab=VOP}
N 260 -290 280 -290 {
lab=VCC}
C {inverterblock.sym} 170 -150 0 0 {name=X2}
C {inverterblock.sym} 330 -150 0 0 {name=X1}
C {inverterblock.sym} 490 -150 0 0 {name=X3}
C {devices/ipin.sym} 190 -200 0 0 {name=p3 lab=PD}
C {devices/ipin.sym} 190 -260 0 0 {name=p4 lab=VCTRL}
C {devices/iopin.sym} 260 -290 2 0 {name=p1 lab=VCC}
C {devices/iopin.sym} 260 -170 2 0 {name=p2 lab=VSS}
C {devices/opin.sym} 750 -200 0 0 {name=p5 lab=VON}
C {devices/opin.sym} 780 -260 0 0 {name=p6 lab=VOP}
