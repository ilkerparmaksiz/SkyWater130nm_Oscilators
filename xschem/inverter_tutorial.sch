v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -210 -1220 -210 -1190 {
lab=VDD}
N -210 -1220 -20 -1220 {
lab=VDD}
N -20 -1220 100 -1220 {
lab=VDD}
N 100 -1220 260 -1220 {
lab=VDD}
N -40 -1220 -40 -1190 {
lab=VDD}
N 100 -1220 100 -1190 {
lab=VDD}
N 260 -1220 260 -1190 {
lab=VDD}
N 100 -1130 100 -1080 {
lab=VON}
N -40 -1130 -40 -1080 {
lab=VON}
N 30 -1160 60 -1160 {
lab=VON}
N 30 -1160 30 -1110 {
lab=VON}
N -40 -1110 30 -1110 {
lab=VON}
N -0 -1160 30 -1160 {
lab=VON}
N 30 -1160 30 -1120 {
lab=VON}
N 30 -1120 100 -1120 {
lab=VON}
N 260 -1140 260 -1100 {
lab=VON}
N 100 -1100 260 -1100 {
lab=VON}
N -210 -1130 -210 -1100 {
lab=VON}
N -210 -1100 -40 -1100 {
lab=VON}
N -210 -1160 -170 -1160 {
lab=VDD}
N -170 -1220 -170 -1160 {
lab=VDD}
N -80 -1220 -80 -1160 {
lab=VDD}
N -80 -1160 -40 -1160 {
lab=VDD}
N 230 -1160 270 -1160 {
lab=VDD}
N 230 -1220 230 -1160 {
lab=VDD}
N 170 -1220 170 -1160 {
lab=VDD}
N 100 -1160 170 -1160 {
lab=VDD}
N 50 -950 80 -950 {
lab=VSS}
N 80 -1050 80 -950 {
lab=VSS}
N -110 -1090 -40 -1090 {
lab=VON}
N 100 -1090 170 -1090 {
lab=VOP}
N -10 -1250 -10 -1220 {
lab=VDD}
N -110 -1050 -80 -1050 {
lab=VIP}
N 50 -920 80 -920 {
lab=VSS}
N 80 -950 80 -920 {
lab=VSS}
N 30 -920 50 -920 {
lab=VSS}
N 140 -1050 170 -1050 {
lab=Vin}
N -270 -1160 -250 -1160 {
lab=VCTRL}
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
N 300 -1160 320 -1160 {
lab=VCTRL}
C {devices/code.sym} 570 -1150 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 600 -980 0 0 {name=spice only_toplevel=false value=".dc Vin 0 1.8 0.01
.save all
"}
C {devices/vdd.sym} -10 -1250 0 0 {name=l6 lab=VDD}
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
C {devices/ipin.sym} -100 -1090 0 0 {name=VON lab=VON}
C {devices/ipin.sym} 170 -1090 0 1 {name=VOP lab=VOP}
C {devices/ipin.sym} -0 -950 0 0 {name=PD lab=PD}
C {devices/ipin.sym} 40 -920 0 0 {name=VSS lab=VSS}
C {devices/ipin.sym} 160 -1050 2 0 {name=Vin3 lab=Vin}
C {devices/ipin.sym} -260 -1160 0 0 {name=VCTRL lab=VCTRL}
C {devices/ipin.sym} 320 -1160 2 0 {name=VCTRL1 lab=VCTRL}
C {devices/spice_probe.sym} 260 -1190 0 0 {name=p1 attrs=""}
