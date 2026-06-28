// sch_path: /home/me/Project/sky130_adder_4bit/xschem/adder_1bit.sch
module adder_1bit
(
  output wire Sum,
  output wire Cout,
  input wire A,
  input wire B,
  input wire Cin,
  input wire VDD,
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
