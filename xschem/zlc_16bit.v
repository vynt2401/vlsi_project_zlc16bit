// sch_path: /home/biaan/sky130_adder_4bit/xschem/zlc_16bit.sch
module zlc_16bit
(
  output wire [4:0] Y,
  input wire VDD,
  input wire GND,
  input wire [15:0] A
);
wire [2:0] Z0 ;
wire [2:0] Z1 ;
wire [2:0] Z2 ;
wire [2:0] Z3 ;
wire net1 ;
wire net2 ;
wire net3 ;
wire net4 ;
wire net5 ;
wire net6 ;
wire net7 ;
wire net8 ;
wire net9 ;

sky130_fd_sc_hd__and4_1
x5 ( 
 .A( Z3[2] ),
 .B( Z2[2] ),
 .C( Z1[2] ),
 .D( Z0[2] ),
 .X( Y[4] )
);


sky130_fd_sc_hd__nand2_1
x6 ( 
 .A( Z1[2] ),
 .B( Z0[2] ),
 .Y( net1 )
);


sky130_fd_sc_hd__and3_1
x7 ( 
 .A( Z3[2] ),
 .B( Z2[2] ),
 .C( net1 ),
 .X( Y[3] )
);


sky130_fd_sc_hd__inv_1
x8 ( 
 .A( Z0[2] ),
 .Y( net2 )
);


sky130_fd_sc_hd__inv_1
x9 ( 
 .A( Z2[2] ),
 .Y( net5 )
);


sky130_fd_sc_hd__and2_1
x10 ( 
 .A( Z3[2] ),
 .B( net4 ),
 .X( Y[2] )
);


sky130_fd_sc_hd__or2_1
x11 ( 
 .A( net5 ),
 .B( net3 ),
 .X( net4 )
);


sky130_fd_sc_hd__and2_1
x12 ( 
 .A( Z1[2] ),
 .B( net2 ),
 .X( net3 )
);


sky130_fd_sc_hd__mux2_1
x13 ( 
 .A0( Z3[1] ),
 .A1( Z2[1] ),
 .S( Y[2] ),
 .X( net6 )
);


sky130_fd_sc_hd__mux2_1
x14 ( 
 .A0( Z1[1] ),
 .A1( Z0[1] ),
 .S( Y[2] ),
 .X( net7 )
);


sky130_fd_sc_hd__mux2_1
x15 ( 
 .A0( net6 ),
 .A1( net7 ),
 .S( Y[3] ),
 .X( Y[1] )
);


sky130_fd_sc_hd__mux2_1
x16 ( 
 .A0( Z3[0] ),
 .A1( Z2[0] ),
 .S( Y[2] ),
 .X( net8 )
);


sky130_fd_sc_hd__mux2_1
x17 ( 
 .A0( Z1[0] ),
 .A1( Z0[0] ),
 .S( Y[2] ),
 .X( net9 )
);


sky130_fd_sc_hd__mux2_1
x18 ( 
 .A0( net8 ),
 .A1( net9 ),
 .S( Y[3] ),
 .X( Y[0] )
);


zlc_4bit
x1 ( 
 .Z( Z3 ),
 .A( A[15:12] ),
 .VDD( VDD ),
 .GND( GND )
);


zlc_4bit
x2 ( 
 .Z( Z2 ),
 .A( A[11:8] ),
 .VDD( VDD ),
 .GND( GND )
);


zlc_4bit
x3 ( 
 .Z( Z1 ),
 .A( A[7:4] ),
 .VDD( VDD ),
 .GND( GND )
);


zlc_4bit
x4 ( 
 .Z( Z0 ),
 .A( A[3:0] ),
 .VDD( VDD ),
 .GND( GND )
);

endmodule

// expanding   symbol:  zlc_4bit.sym # of pins=4
// sym_path: /home/biaan/sky130_adder_4bit/xschem/zlc_4bit.sym
// sch_path: /home/biaan/sky130_adder_4bit/xschem/zlc_4bit.sch
module zlc_4bit
(
  output wire [2:0] Z,
  input wire [3:0] A,
  input wire VDD,
  input wire GND
);
wire net1 ;
wire net2 ;
wire net3 ;
wire net4 ;
wire net5 ;
wire net6 ;


sky130_fd_sc_hd__nor4_1
x1 ( 
 .A( A[3] ),
 .B( A[2] ),
 .C( A[1] ),
 .D( A[0] ),
 .Y( Z[2] )
);


sky130_fd_sc_hd__nor2_1
x2 ( 
 .A( A[3] ),
 .B( A[2] ),
 .Y( net5 )
);


sky130_fd_sc_hd__or2_1
x3 ( 
 .A( A[1] ),
 .B( A[0] ),
 .X( net6 )
);


sky130_fd_sc_hd__and2_1
x4 ( 
 .A( net5 ),
 .B( net6 ),
 .X( Z[1] )
);


sky130_fd_sc_hd__inv_1
x5 ( 
 .A( A[3] ),
 .Y( net4 )
);


sky130_fd_sc_hd__and2_1
x7 ( 
 .A( net1 ),
 .B( A[0] ),
 .X( net2 )
);


sky130_fd_sc_hd__or2_1
x8 ( 
 .A( net2 ),
 .B( A[2] ),
 .X( net3 )
);


sky130_fd_sc_hd__and2_1
x9 ( 
 .A( net4 ),
 .B( net3 ),
 .X( Z[0] )
);


sky130_fd_sc_hd__inv_1
x6 ( 
 .A( A[1] ),
 .Y( net1 )
);

endmodule
