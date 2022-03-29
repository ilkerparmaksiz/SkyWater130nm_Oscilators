v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 640 -1270 640 -1245 {
lab=vg}
N 640 -1245 706 -1245 {
lab=vg}
N 805 -1288 837 -1288 {
lab=out}
N 746 -1301 746 -1288 {
lab=vd}
N 746 -1288 746 -1282 {
lab=vd}
N 745 -1282 746 -1282 {
lab=vd}
N 745 -1282 745 -1274 {
lab=vd}
N 745 -1215 837 -1215 {
lab=vvs}
N 837 -1215 837 -1209 {
lab=vvs}
N 837 -1209 849 -1209 {
lab=vvs}
N 849 -1209 849 -1208 {
lab=vvs}
N 849 -1208 856 -1208 {
lab=vvs}
N 726 -1288 746 -1288 {
lab=vd}
N 823 -1228 823 -1215 {
lab=vvs}
N 677 -1260 677 -1245 {
lab=vg}
N 150 -1272 150 -1239 {
lab=Vin}
N 560 -1245 581 -1245 {
lab=Vin}
N 640 -1245 640 -1215 {
lab=vg}
C {sky130_fd_pr/nfet3_01v8.sym} 725 -1245 0 0 {name=M2
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
C {devices/gnd.sym} 640 -1156 0 0 {name=l2 lab=GND}
C {scripts/sky130_models.tcl} 860 -1230 0 0 {}
C {devices/vsource.sym} 60 -1200 0 0 {name=vcc value=1.8
}
C {devices/vdd.sym} 60 -1230 0 0 {name=V4 lab=VDD}
C {devices/gnd.sym} 60 -1170 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 150 -1210 0 0 {name=Vin value="pulse(-200m 200m 1ns 1ns 1ns 50ns 100ns)"
}
C {devices/gnd.sym} 150 -1180 0 0 {name=l5 lab=GND}
C {devices/code.sym} 1020 -1320 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 1050 -1150 0 0 {name=NGSPICE
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
op
.endc
" 
}
C {devices/vdd.sym} 746 -1360 0 0 {name=V2 lab=VDD}
C {devices/opin.sym} 832 -1288 0 0 {name=out lab=out}
C {devices/res.sym} 640 -1300 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 640 -1186 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 746 -1330 0 0 {name=R3
value=200k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 745 -1185 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 856 -1178 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 776 -1288 1 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 745 -1155 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 856 -1148 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 640 -1330 0 0 {name=V1 lab=VDD}
C {devices/opin.sym} 823 -1220 3 0 {name=vvs lab=vvs}
C {devices/capa.sym} 610 -1245 1 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/opin.sym} 677 -1253 3 0 {name=vg lab=vg}
C {devices/opin.sym} 731 -1288 2 0 {name=vd lab=vd}
C {devices/vsource.sym} 169 -1111 0 0 {name=Vin3 value="SIN(-200m 200m 2000000 0 0)"
}
C {devices/gnd.sym} 169 -1081 0 0 {name=l6 lab=GND}
C {devices/ipin.sym} 150 -1263 1 0 {name=Vin1 lab=Vin}
C {devices/ipin.sym} 564 -1245 0 0 {name=Vin2 lab=Vin}
