`timescale 100ps / 100ps

module adder_4bit_tb();

wire [3:0] Sum ;
wire Cout ;
reg [3:0] A ;
reg [3:0] B ;
reg Cin ;

adder_4bit
x1 ( 
 .A( A ),
 .B( B ),
 .Cin( Cin ),
 .Sum( Sum ),
 .Cout( Cout )
);

initial begin
  $dumpfile("adder_4bit.vcd");
  $dumpvars(0, adder_4bit_tb);
end

// Internal variables for verification
reg [4:0] expected;
integer i, j, k;
integer error_count = 0;

initial begin
// Triple loop to cover all combinations of A, B, and Cin
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                for (k = 0; k < 2; k = k + 1) begin
                    
                    A = i;
                    B = j;
                    Cin = k;
                    
                    // Small delay to allow combinational logic to settle
                    #10;

                    // Calculate what the result SHOULD be
                    // {Cout, Sum} concatenated forms a 5-bit number
                    expected = A + B + Cin;

                    // Check results
                    if ({Cout, Sum} !== expected) begin
                        $display("ERROR: A=%d B=%d Cin=%b | Expected=%d Got=%d", 
                                 A, B, Cin, expected, {Cout, Sum});
                        error_count = error_count + 1;
                    end
                end
            end
        end

        // Final Report
        if (error_count == 0) begin
            $display("---------------------------------------");
            $display("TEST PASSED: All 512 cases successful!");
            $display("---------------------------------------");
        end else begin
            $display("---------------------------------------");
            $display("TEST FAILED: %d errors found.", error_count);
            $display("---------------------------------------");
        end

        $finish;
end
endmodule
