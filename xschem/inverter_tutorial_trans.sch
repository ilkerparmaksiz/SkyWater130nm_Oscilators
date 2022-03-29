v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -100 -1070 -100 -940 {
lab=Vin}
N -170 -1010 -100 -1010 {
lab=Vin}
N -60 -1040 -60 -970 {
lab=#net1}
N -60 -1130 -60 -1100 {
lab=VDD}
N 30 -1070 30 -940 {
lab=#net1}
N 70 -1040 70 -970 {
lab=#net2}
N 70 -1130 70 -1100 {
lab=VDD}
N 190 -1070 190 -940 {
lab=#net2}
N 230 -1040 230 -970 {
lab=Vin}
N 230 -1130 230 -1100 {
lab=VDD}
N -60 -1000 30 -1000 {
lab=#net1}
N 70 -1010 190 -1010 {
lab=#net2}
N -130 -1200 -130 -1010 {
lab=Vin}
N -130 -1200 280 -1200 {
lab=Vin}
N 280 -1200 330 -1200 {
lab=Vin}
N 330 -1200 330 -1010 {
lab=Vin}
N 230 -1010 330 -1010 {
lab=Vin}
C {sky130_fd_pr/nfet3_01v8.sym} -80 -940 0 0 {name=M1
L=0.15
W=1
body=GND
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
C {sky130_fd_pr/pfet3_01v8.sym} -80 -1070 0 0 {name=M2
L=0.15
W=1
body=VDD
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
C {devices/gnd.sym} -60 -910 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -60 -1130 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -360 -1060 0 0 {name=VDD value=1.8
}
C {devices/vdd.sym} -360 -1090 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -360 -1030 0 0 {name=l4 lab=GND}
C {devices/code.sym} 790 -1130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 820 -960 0 0 {name=spice only_toplevel=false value=".tran 0.01n 10n"
"}
C {devices/ipin.sym} -170 -1010 0 0 {name=Vin1 lab=Vin}
C {sky130_fd_pr/nfet3_01v8.sym} 50 -940 0 0 {name=M3
L=0.15
W=1
body=GND
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
C {sky130_fd_pr/pfet3_01v8.sym} 50 -1070 0 0 {name=M4
L=0.15
W=1
body=VDD
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
C {devices/gnd.sym} 70 -910 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 70 -1130 0 0 {name=l7 lab=VDD}
C {sky130_fd_pr/nfet3_01v8.sym} 210 -940 0 0 {name=M5
L=0.15
W=1
body=GND
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
C {sky130_fd_pr/pfet3_01v8.sym} 210 -1070 0 0 {name=M6
L=0.15
W=1
body=VDD
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
C {devices/gnd.sym} 230 -910 0 0 {name=l8 lab=GND}
C {devices/vdd.sym} 230 -1130 0 0 {name=l9 lab=VDD}
