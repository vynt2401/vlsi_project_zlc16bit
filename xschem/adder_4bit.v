// sch_path: /home/me/Project/sky130_adder_4bit/xschem/adder_4bit.sch
module adder_4bit
(
  output wire [3:0] Sum,
  output wire Cout,
  input wire [3:0] A,
  input wire [3:0] B,
  input wire Cin,
  input wire VDD,
  input wire GND
);
wire n1 ;
wire n2 ;
wire n3 ;

adder_1bit
x1 ( 
 .A( A[0] ),
 .B( B[0] ),
 .Sum( Sum[0] ),
 .Cin( Cin ),
 .VDD( VDD ),
 .Cout( n1 ),
 .GND( GND )
);


adder_1bit
x2 ( 
 .A( A[1] ),
 .B( B[1] ),
 .Sum( Sum[1] ),
 .Cin( n1 ),
 .VDD( VDD ),
 .Cout( n2 ),
 .GND( GND )
);


adder_1bit
x3 ( 
 .A( A[2] ),
 .B( B[2] ),
 .Sum( Sum[2] ),
 .Cin( n2 ),
 .VDD( VDD ),
 .Cout( n3 ),
 .GND( GND )
);


adder_1bit
x4 ( 
 .A( A[3] ),
 .B( B[3] ),
 .Sum( Sum[3] ),
 .Cin( n3 ),
 .VDD( VDD ),
 .Cout( Cout ),
 .GND( GND )
);

endmodule

// expanding   symbol:  adder_1bit.sym # of pins=7
// sym_path: /home/me/Project/sky130_adder_4bit/xschem/adder_1bit.sym
// sch_path: /home/me/Project/sky130_adder_4bit/xschem/adder_1bit.sch
module adder_1bit
(
  input wire A,
  input wire B,
  output wire Sum,
  input wire Cin,
  input wire VDD,
  output wire Cout,
  input wire GND
);
wire T1 ;
wire T2 ;
wire net1 ;
wire net2 ;
wire net3 ;
wire net4 ;
wire net5 ;


sky130_fd_sc_hd__nand2_1
x1 ( 
 .A( A ),
 .B( B ),
 .Y( T1 )
);


sky130_fd_sc_hd__nand2_1
x2 ( 
 .A( A ),
 .B( T1 ),
 .Y( net1 )
);


sky130_fd_sc_hd__nand2_1
x3 ( 
 .A( T1 ),
 .B( B ),
 .Y( net2 )
);


sky130_fd_sc_hd__nand2_1
x4 ( 
 .A( net1 ),
 .B( net2 ),
 .Y( net5 )
);


sky130_fd_sc_hd__nand2_1
x5 ( 
 .A( net5 ),
 .B( Cin ),
 .Y( T2 )
);


sky130_fd_sc_hd__nand2_1
x6 ( 
 .A( net5 ),
 .B( T2 ),
 .Y( net3 )
);


sky130_fd_sc_hd__nand2_1
x7 ( 
 .A( T2 ),
 .B( Cin ),
 .Y( net4 )
);


sky130_fd_sc_hd__nand2_1
x8 ( 
 .A( net3 ),
 .B( net4 ),
 .Y( Sum )
);


sky130_fd_sc_hd__nand2_1
x9 ( 
 .A( T1 ),
 .B( T2 ),
 .Y( Cout )
);

endmodule
