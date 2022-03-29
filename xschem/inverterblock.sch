v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -210 -1220 -210 -1190 {
lab=VCC}
N -210 -1220 -20 -1220 {
lab=VCC}
N -20 -1220 100 -1220 {
lab=VCC}
N 100 -1220 260 -1220 {
lab=VCC}
N -40 -1220 -40 -1190 {
lab=VCC}
N 100 -1220 100 -1190 {
lab=VCC}
N 260 -1220 260 -1190 {
lab=VCC}
N 100 -1130 100 -1080 {
lab=VOP}
N -40 -1130 -40 -1080 {
lab=VON}
N -0 -1160 30 -1160 {
lab=VOP}
N 260 -1140 260 -1100 {
lab=VOP}
N 100 -1100 260 -1100 {
lab=VOP}
N -210 -1130 -210 -1100 {
lab=VON}
N -210 -1100 -40 -1100 {
lab=VON}
N -210 -1160 -170 -1160 {
lab=VCC}
N -170 -1220 -170 -1160 {
lab=VCC}
N -80 -1220 -80 -1160 {
lab=VCC}
N -80 -1160 -40 -1160 {
lab=VCC}
N 230 -1160 270 -1160 {
lab=VCC}
N 230 -1220 230 -1160 {
lab=VCC}
N 170 -1220 170 -1160 {
lab=VCC}
N 100 -1160 170 -1160 {
lab=VCC}
N 50 -950 80 -950 {
lab=VSS}
N 80 -1050 80 -950 {
lab=VSS}
N -110 -1090 -40 -1090 {
lab=VON}
N 100 -1090 170 -1090 {
lab=VOP}
N -10 -1250 -10 -1220 {
lab=VCC}
N -110 -1050 -80 -1050 {
lab=VIP}
N 50 -920 80 -920 {
lab=VSS}
N 80 -950 80 -920 {
lab=VSS}
N 30 -920 50 -920 {
lab=VSS}
N 140 -1050 170 -1050 {
lab=VIN}
N -40 -1020 -40 -1010 {
lab=#net1}
N -40 -1010 50 -1010 {
lab=#net1}
N 50 -1010 50 -980 {
lab=#net1}
N 100 -1020 100 -1010 {
lab=#net1}
N 50 -1010 100 -1010 {
lab=#net1}
N -10 -950 10 -950 {
lab=PD}
N -40 -1050 100 -1050 {
lab=VSS}
N 100 -1050 110 -1050 {
lab=VSS}
N -290 -1160 -250 -1160 {
lab=VCTRL}
N 300 -1160 320 -1160 {
lab=VCTRL}
N 50 -1160 60 -1160 {
lab=VON}
N 50 -1160 50 -1110 {
lab=VON}
N -40 -1110 50 -1110 {
lab=VON}
N 30 -1160 30 -1120 {
lab=VOP}
N 30 -1120 100 -1120 {
lab=VOP}
C {sky130_fd_pr/nfet_01v8.sym} 30 -950 0 0 {name=M9
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -230 -1160 0 0 {name=M10
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -20 -1160 0 1 {name=M3
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 80 -1160 0 0 {name=M4
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 280 -1160 0 1 {name=M5
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -60 -1050 0 0 {name=M6
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 120 -1050 0 1 {name=M7
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -100 -1050 0 0 {name=VIP lab=VIP}
C {devices/opin.sym} -100 -1090 2 0 {name=pON lab=VON}
C {devices/opin.sym} 170 -1090 2 1 {name=pOP lab=VOP}
C {devices/ipin.sym} -0 -950 0 0 {name=PD lab=PD}
C {devices/iopin.sym} 30 -920 2 0 {name=pSS lab=VSS}
C {devices/ipin.sym} 160 -1050 2 0 {name=pin3 lab=VIN}
C {devices/ipin.sym} -280 -1160 0 0 {name=VCTRL lab=VCTRL}
C {devices/iopin.sym} -10 -1240 3 0 {name=pvcc lab=VCC}
C {devices/ipin.sym} 310 -1160 2 0 {name=VCTRL1 lab=VCTRL}
C {devices/ngspice_probe.sym} 260 -1130 1 0 {name=r1}
C {devices/ngspice_probe.sym} -40 -1100 1 0 {name=r2}
C {devices/ngspice_get_value.sym} 260 -1190 0 0 {name=r3 node=xxx
descr="I="}
C {devices/ngspice_get_value.sym} 300 -1160 0 0 {name=r4 node=xxx
descr="I="}
C {devices/ngspice_get_value.sym} 260 -1130 2 0 {name=r5 node=xxx
descr="I="}
C {devices/ngspice_get_value.sym} -210 -1130 2 0 {name=r6 node=xxx
descr="I="}
C {devices/ngspice_get_value.sym} -40 -1020 2 0 {name=r7 node=xxx
descr="I="}
C {devices/ngspice_get_value.sym} 50 -980 1 0 {name=r8 node=xxx
descr="I="}
