v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 277 -2614 277 -2581 {
lab=Vin}
N 414 -2709 433 -2709 {
lab=out}
N 433 -2709 433 -2708 {
lab=out}
N 433 -2708 443 -2708 {
lab=out}
N 348 -2679 376 -2679 {
lab=Vin}
C {devices/code_shown.sym} 879 -2467 0 0 {name=NGSPICE
only_toplevel=true
value="* this option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=1 
*.option savecurrents
.control
tran 0.01n 1us
plot v(vg) vs v(vd)
plot v(vg) vs v(vvs)
plot v(vvs) vs v(vd)
plot v(out) v(vg)
plot v(Vin) v(out)
plot all.vcc#branch vs v(Vin)  all.vcc#branch vs v(out)

op
.endc
" 
}
C {devices/code.sym} 890 -2738 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/nfet3_01v8.sym} 394 -2679 0 0 {name=M2
L=0.15
W=1
body=GND
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 277 -2552 0 0 {name=Vin value="SIN(-200m 200m 2000000 0 0)"
}
C {devices/gnd.sym} 277 -2522 0 0 {name=l5 lab=GND}
C {devices/ipin.sym} 277 -2605 1 0 {name=Vin1 lab=Vin}
C {devices/ipin.sym} 357 -2679 0 0 {name=Vin2 lab=Vin}
C {devices/gnd.sym} 414 -2649 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 206 -2568 0 0 {name=vcc value=1.8
}
C {devices/vdd.sym} 206 -2598 0 0 {name=V4 lab=VDD}
C {devices/gnd.sym} 206 -2538 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 414 -2769 0 0 {name=V1 lab=VDD}
C {devices/res.sym} 414 -2739 0 0 {name=R1
value=200k
footprint=1206
device=resistor
m=1}
C {devices/opin.sym} 437 -2708 0 0 {name=out lab=out}
