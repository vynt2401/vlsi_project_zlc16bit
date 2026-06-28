`timescale 100ps / 100ps

module zlc_16bit_tb();

reg  [15:0] A;
wire [4:0]  Y;
supply1 VDD;
supply0 GND;

reg [4:0] expected;
integer i;
integer error_count = 0;

zlc_16bit dut (
  .A(A),
  .Y(Y),
  .VDD(VDD),
  .GND(GND)
);

initial begin
  $dumpfile("zlc_16bit.vcd");
  $dumpvars(0, zlc_16bit_tb);
end

function [4:0] leading_zero_count;
  input [15:0] value;
  integer bit_index;
  reg found_one;
  begin
    leading_zero_count = 5'd0;
    found_one = 1'b0;

    for (bit_index = 15; bit_index >= 0; bit_index = bit_index - 1) begin
      if (!found_one) begin
        if (value[bit_index] == 1'b0) begin
          leading_zero_count = leading_zero_count + 5'd1;
        end else begin
          found_one = 1'b1;
        end
      end
    end
  end
endfunction

task check;
  input [15:0] vector;
  begin
    A = vector;
    expected = leading_zero_count(vector);

    #10;

    if (Y !== expected) begin
      $display(
        "ERROR t=%0t A=%016b A=0x%04h | expected=%0d expected=0x%02h | got=%0d got=0x%02h",
        $time, A, A, expected, expected, Y, Y
      );
      error_count = error_count + 1;
    end
  end
endtask

initial begin
  $display("Running directed ZLC waveform cases...");

  check(16'hFFFF); // no leading zero
  check(16'h8000); // no leading zero
  check(16'h4000); // 1 leading zero
  check(16'h2000); // 2 leading zeros
  check(16'h1000); // 3 leading zeros
  check(16'h0800); // 4 leading zeros
  check(16'h0400); // 5 leading zeros
  check(16'h0200); // 6 leading zeros
  check(16'h0100); // 7 leading zeros
  check(16'h0080); // 8 leading zeros
  check(16'h0040); // 9 leading zeros
  check(16'h0020); // 10 leading zeros
  check(16'h0010); // 11 leading zeros
  check(16'h0008); // 12 leading zeros
  check(16'h0004); // 13 leading zeros
  check(16'h0002); // 14 leading zeros
  check(16'h0001); // 15 leading zeros
  check(16'h0000); // 16 leading zeros

  check(16'h1620); // example from the assignment: 0001011000100000 -> 3
  check(16'h00F0); // first one at bit 7 -> 8
  check(16'h5555); // first bit is 0, second bit is 1 -> 1
  check(16'hAAAA); // first bit is 1 -> 0

  $dumpoff;
  $display("Running exhaustive ZLC sweep for all 65536 input values...");

  for (i = 0; i < 65536; i = i + 1) begin
    check(i);
  end

  if (error_count == 0) begin
    $display("---------------------------------------");
    $display("TEST PASSED: directed cases and all 65536 input values successful!");
    $display("---------------------------------------");
  end else begin
    $display("---------------------------------------");
    $display("TEST FAILED: %0d errors found.", error_count);
    $display("---------------------------------------");
  end

  $finish;
end

endmodule
