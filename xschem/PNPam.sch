v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1730 -1370 1730 -1350 {
lab=#net1}
N 1730 -1360 1800 -1360 {
lab=#net1}
N 1570 -1420 1570 -1360 {
lab=vdd}
N 1900 -1330 1920 -1330 {
lab=out}
C {sky130_fd_pr/pnp_05v5.sym} 1820 -1360 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {devices/res.sym} 1730 -1400 2 0 {name=R1
value=22k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1840 -1300 2 0 {name=R2
value=5.1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1730 -1320 2 0 {name=R3
value=90k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1840 -1420 2 0 {name=R4
value=1.2k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1700 -1360 3 0 {name=C1
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 1570 -1330 0 0 {name=V1 value=15}
C {devices/gnd.sym} 1570 -1300 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1730 -1290 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1840 -1270 0 0 {name=l3 lab=GND}
C {devices/ipin.sym} 1570 -1410 1 0 {name=vdd lab=vdd}
C {devices/ipin.sym} 1730 -1430 1 0 {name=vdd1 lab=vdd}
C {devices/ipin.sym} 1840 -1450 1 0 {name=vdd2 lab=vdd}
C {devices/capa.sym} 1870 -1330 3 0 {name=C2
m=1
value=100u
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 1610 -1330 0 0 {name=V2 value="SIN(0 100m 10000 0 0)"}
C {devices/gnd.sym} 1610 -1300 0 0 {name=l4 lab=GND}
C {devices/ipin.sym} 1610 -1360 1 0 {name=in3 lab=in}
C {devices/ipin.sym} 1670 -1360 0 0 {name=in4 lab=in}
C {devices/opin.sym} 1920 -1330 0 0 {name=out lab=out}
C {devices/code.sym} 2020 -1570 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 2030 -1390 0 0 {name=NGSPICE1
only_toplevel=true
value="* this option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=1 
*.option savecurrents
.control
tran 1us 1m
plot v(in) v(out)
op
.endc
" 
}
C {devices/res.sym} 1900 -1300 2 0 {name=R5
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1900 -1270 0 0 {name=l5 lab=GND}
