v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 485 -1010 485 -985 {
lab=output}
N 485 -925 485 -910 {
lab=#net1}
N 380 -980 380 -925 {
lab=#net2}
N 380 -955 445 -955 {
lab=#net2}
N 320 -955 375 -955 {
lab=#net3}
N 380 -1070 380 -1040 {
lab=vcc}
N 380 -1070 485 -1070 {
lab=vcc}
N 485 -920 595 -920 {
lab=#net1}
N 595 -860 595 -855 {
lab=GND}
N 595 -855 595 -850 {
lab=GND}
N 485 -850 595 -850 {
lab=GND}
N 380 -850 485 -850 {
lab=GND}
N 380 -865 380 -850 {
lab=GND}
N 435 -1135 435 -1070 {
lab=vcc}
N 210 -955 260 -955 {
lab=input}
N 485 -1000 540 -1000 {
lab=output}
C {sky130_fd_pr/nfet3_01v8.sym} 465 -955 0 0 {name=M2
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 595 -890 0 1 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_high_po_0p35.sym} 380 -1010 0 0 {name=R1
W=0.35
L=1
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 485 -1040 0 0 {name=R2
W=0.35
L=1
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 485 -880 0 0 {name=R3
W=0.35
L=1
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 290 -955 1 1 {name=C2 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_high_po_0p35.sym} 380 -895 0 0 {name=R4
W=0.35
L=1
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/gnd.sym} 395 -850 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} 210 -955 0 0 {name=p1 lab=input
}
C {devices/ipin.sym} 435 -1135 1 0 {name=p2 lab=vcc
}
C {devices/iopin.sym} 540 -1000 0 0 {name=p3 lab=output}
C {devices/vsource_pwl.sym} -20 -875 0 0 {name=E1 TABLE="1 0 2 3"}
C {scripts/sky130_models.tcl} 600 -940 0 0 {}
C {xschem_verilog_import/xschem.tcl} 20 -1230 0 0 {name=x1}
