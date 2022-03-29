v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
B 2 730 -560 1530 -160 {flags=graph
y1=1.04686
y2=1.74264
ypos1=0
ypos2=2
divy=1
subdivy=1
unity=1
x1=1.961e-09
x2=3.46441e-09
divx=10

node="vop
von"
color="5 4"
dataset=0
unitx=n
subdivx=2
digital=0}
B 2 730 -160 1530 240 {flags=graph

y2=7.60004e-08
ypos1=0
ypos2=2
divy=1
subdivy=10
unity=p
x1=1.961e-09
x2=3.46441e-09
divx=1
subdivx=1


dataset=0
unitx=n


y1=-2.05475e-07

color=6
node=i(v3)}
N 220 -230 270 -230 {
lab=#net1}
N 380 -170 400 -170 {
lab=VOP}
N 380 -100 390 -100 {
lab=VON}
N 120 -170 170 -170 {
lab=vctrl}
N 150 -170 150 -150 {
lab=vctrl}
C {RingOslHw.sym} 120 -50 0 0 {name=X1}
C {devices/vsource.sym} 190 -230 1 0 {name=V2 value=1.8}
C {devices/gnd.sym} 160 -230 1 0 {name=l1 lab=GND}
C {devices/opin.sym} 390 -170 0 0 {name=p1 lab=VOP}
C {devices/opin.sym} 390 -100 0 0 {name=p3 lab=VON}
C {devices/gnd.sym} 110 -100 1 0 {name=l3 lab=GND}
C {devices/code.sym} -340 -240 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} -310 -70 0 0 {name=NGSPICE
only_toplevel=true
value="* this option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=1 
*.option savecurrents
.control
tran 0.01n 20n
save all
write RingOSSim.raw
plot v(VON)
plot v(VOP)
plot v(VON) v(vctrl) v(VOP)
set appendwrite
op
write RingOSSim.raw
.endc
" 
}
C {devices/ipin.sym} 150 -160 3 0 {name=p2 lab=vctrl}
C {devices/gnd.sym} 60 -170 1 0 {name=l5 lab=GND}
C {devices/vsource.sym} 140 -100 1 0 {name=V3 value=1}
C {devices/gnd.sym} 270 -40 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 90 -170 1 0 {name=V1 value=0.6}
C {devices/launcher.sym} -120 -410 0 0 {name=h1
descr=Annotate
tclcommand="ngspice::annotate"}
