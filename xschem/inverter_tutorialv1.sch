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
lab=out}
N -60 -1000 30 -1000 {
lab=out}
N -60 -1130 -60 -1100 {
lab=VDD}
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
C {devices/vsource.sym} -430 -1050 0 0 {name=VDD value=1.8
}
C {devices/vdd.sym} -430 -1080 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -430 -1020 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -340 -1060 0 0 {name=Vin value=0
}
C {devices/gnd.sym} -340 -1030 0 0 {name=l5 lab=GND}
C {devices/code.sym} 120 -1100 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 150 -930 0 0 {name=spice only_toplevel=false value=".dc Vin 0 1.8 0.01
.save all
"}
C {devices/ipin.sym} -170 -1010 0 0 {name=Vin1 lab=Vin}
C {devices/opin.sym} 30 -1000 0 0 {name=Out lab=out}
C {devices/ipin.sym} -340 -1090 1 0 {name=Vin2 lab=Vin}
