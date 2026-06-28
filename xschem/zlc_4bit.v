// sch_path: /home/me/sky130_adder_4bit/xschem/zlc_4bit.sch
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
