`timescale 100ps / 100ps

module adder_1bit_tb();

reg A ;
reg B ;
reg Cin ;
wire Sum ;
wire Cout ;

adder_1bit
x1 ( 
 .A( A ),
 .B( B ),
 .Cin( Cin ),
 .Sum( Sum ),
 .Cout( Cout )
);

initial begin
  $dumpfile("adder_1bit.vcd");
  $dumpvars(0, adder_1bit_tb);
end

always begin
  A=0;B=0;Cin=0;#10
  A=1;B=0;Cin=0;#10
  A=0;B=1;Cin=0;#10
  A=1;B=1;Cin=0;#10
  A=0;B=0;Cin=1;#10
  A=1;B=0;Cin=1;#10
  A=0;B=1;Cin=1;#10
  A=1;B=1;Cin=1;#10  
  $finish;
end
endmodule
