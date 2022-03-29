// sch_path: /home/ilker/Projects/OpenICEDA/Project/xschem/RingOslHw.sch
module RingOslHw (
  output wire VON,
  output wire VOP,
  inout wire VCC,
  inout wire VSS,
  input wire PD,
  input wire VCTRL
);

wire net1  ;
wire net2  ;
wire net3  ;
wire net4  ;

inverterblock
X2 ( 
 .VCC( VCC ),
 .VSS( VSS ),
 .VON( net4 ),
 .VOP( net3 ),
 .VCTRL( VCTRL ),
 .PD( PD ),
 .VIN( VOP ),
 .VIP( VON ),
 .VCC( VCC ),
 .VSS( VSS ),
 .VON( net4 ),
 .VOP( net3 ),
 .VCTRL( VCTRL ),
 .PD( PD ),
 .VIN( VOP ),
 .VIP( VON )
);


inverterblock
X1 ( 
 .VCC( VCC ),
 .VSS( VSS ),
 .VON( net2 ),
 .VOP( net1 ),
 .VCTRL( VCTRL ),
 .PD( PD ),
 .VIN( net3 ),
 .VIP( net4 ),
 .VCC( VCC ),
 .VSS( VSS ),
 .VON( net2 ),
 .VOP( net1 ),
 .VCTRL( VCTRL ),
 .PD( PD ),
 .VIN( net3 ),
 .VIP( net4 )
);


inverterblock
X3 ( 
 .VCC( VCC ),
 .VSS( VSS ),
 .VON( VON ),
 .VOP( VOP ),
 .VCTRL( VCTRL ),
 .PD( PD ),
 .VIN( net1 ),
 .VIP( net2 ),
 .VCC( VCC ),
 .VSS( VSS ),
 .VON( VON ),
 .VOP( VOP ),
 .VCTRL( VCTRL ),
 .PD( PD ),
 .VIN( net1 ),
 .VIP( net2 )
);


** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt


* this option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=1 
*.option savecurrents
.control
tran 0.01n 1us
plot v(VON) vs v(VOP)
plot v(VON) v(VCTRL) (VOP)
op
.endc

endmodule

// expanding   symbol:  inverterblock.sym # of pins=16
// sym_path: /home/ilker/Projects/OpenICEDA/Project/xschem/inverterblock.sym
// sch_path: /home/ilker/Projects/OpenICEDA/Project/xschem/inverterblock.sch
module inverterblock (
  inout wire VCC,
  inout wire VSS,
  output wire VON,
  output wire VOP,
  input wire VCTRL,
  input wire PD,
  input wire VIN,
  input wire VIP,
  inout wire VCC,
  inout wire VSS,
  output wire VON,
  output wire VOP,
  input wire VCTRL,
  input wire PD,
  input wire VIN,
  input wire VIP
);

wire net1  ;


nfet_01v8
#(
.L ( 0.15 ) ,
.W ( 1 ) ,
.nf ( 1 ) ,
.mult ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.29 ) ,
.nrs ( "'0.29 ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_01v8 ) ,
.spiceprefix ( X )
)
M9 ( 
 .D( net1 ),
 .G( PD ),
 .S( VSS ),
 .B( VSS )
);


pfet_01v8
#(
.L ( 0.15 ) ,
.W ( 1 ) ,
.nf ( 1 ) ,
.mult ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.29 ) ,
.nrs ( "'0.29 ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_01v8 ) ,
.spiceprefix ( X )
)
M10 ( 
 .D( VON ),
 .G( VCTRL ),
 .S( VCC ),
 .B( VCC )
);


pfet_01v8
#(
.L ( 0.15 ) ,
.W ( 1 ) ,
.nf ( 1 ) ,
.mult ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.29 ) ,
.nrs ( "'0.29 ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_01v8 ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( VON ),
 .G( VON ),
 .S( VCC ),
 .B( VCC )
);


pfet_01v8
#(
.L ( 0.15 ) ,
.W ( 1 ) ,
.nf ( 1 ) ,
.mult ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.29 ) ,
.nrs ( "'0.29 ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_01v8 ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( VON ),
 .G( VON ),
 .S( VCC ),
 .B( VCC )
);


pfet_01v8
#(
.L ( 0.15 ) ,
.W ( 1 ) ,
.nf ( 1 ) ,
.mult ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.29 ) ,
.nrs ( "'0.29 ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( pfet_01v8 ) ,
.spiceprefix ( X )
)
M5 ( 
 .D( VON ),
 .G( VCTRL ),
 .S( VCC ),
 .B( VCC )
);


nfet_01v8
#(
.L ( 0.15 ) ,
.W ( 1 ) ,
.nf ( 1 ) ,
.mult ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.29 ) ,
.nrs ( "'0.29 ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_01v8 ) ,
.spiceprefix ( X )
)
M6 ( 
 .D( VON ),
 .G( VIP ),
 .S( net1 ),
 .B( VSS )
);


nfet_01v8
#(
.L ( 0.15 ) ,
.W ( 1 ) ,
.nf ( 1 ) ,
.mult ( 1 ) ,
.ad ( "'int((nf+1)/2) ) ,
.pd ( "'2*int((nf+1)/2) ) ,
.as ( "'int((nf+2)/2) ) ,
.ps ( "'2*int((nf+2)/2) ) ,
.nrd ( "'0.29 ) ,
.nrs ( "'0.29 ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( nfet_01v8 ) ,
.spiceprefix ( X )
)
M7 ( 
 .D( VON ),
 .G( VIN ),
 .S( net1 ),
 .B( VSS )
);

endmodule
