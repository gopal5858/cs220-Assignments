`include "./A1Q1_eight_bit_adder.v"

module eight_bit_adder_tb;

   reg [7:0] A;
   reg [7:0] B;
   reg Cin;

   wire [7:0] Sum;
   wire Carry;

   eight_bit_adder ADDER (.x(A), .y(B), .carry_in(Cin), .sum(Sum), .carry_out(Carry));


   initial begin
       A = 0; B = 0; Cin = 0;
       #5
       $display("time=%d | %d + %d + %d = %d, carry = %d\n", $time, A, B, Cin, Sum, Carry);
       A = 2; B = 4; Cin = 1;
       #5
       $display("time=%d | %d + %d + %d = %d, carry = %d\n", $time, A, B, Cin, Sum, Carry);
       A = 26; B = 144; Cin = 1;
       #5
       $display("time=%d | %d + %d + %d = %d, carry = %d\n", $time, A, B, Cin, Sum, Carry);
       A = 128; B = 8; Cin = 0;
       #5
       $display("time=%d | %d + %d + %d = %d, carry = %d\n", $time, A, B, Cin, Sum, Carry);
       A = 196; B = 36; Cin = 0;
       #5
       $display("time=%d | %d + %d + %d = %d, carry = %d\n", $time, A, B, Cin, Sum, Carry);
        A = 14; B = 6; Cin = 1;
       #5
       $display("time=%d | %d + %d + %d = %d, carry = %d\n", $time, A, B, Cin, Sum, Carry);
        A = 56; B = 9; Cin = 0;
       #5
       $display("time=%d | %d + %d + %d = %d, carry = %d\n", $time, A, B, Cin, Sum, Carry);
        A = 35; B = 12; Cin = 1;
       #5
       $display("time=%d | %d + %d + %d = %d, carry = %d\n", $time, A, B, Cin, Sum, Carry);
        A = 68; B = 15; Cin = 0;
       #5
       $display("time=%d | %d + %d + %d = %d, carry = %d\n", $time, A, B, Cin, Sum, Carry);
        A = 84; B = 50; Cin = 1;
       #5
       $display("time=%d | %d + %d + %d = %d, carry = %d\n", $time, A, B, Cin, Sum, Carry);
       A = 147; B = 120; Cin = 1;
       #5
       $display("time=%d | %d + %d + %d = %d, carry = %d\n", $time, A, B, Cin, Sum, Carry);
       A = 17; B = 10; Cin = 1;
       #5
       $display("time=%d | %d + %d + %d = %d, carry = %d\n", $time, A, B, Cin, Sum, Carry);
       A = 63; B = 18; Cin = 1;
       #5
       $display("time=%d | %d + %d + %d = %d, carry = %d\n", $time, A, B, Cin, Sum, Carry);
       A = 170; B = 25; Cin = 0;
       #5
       $display("time=%d | %d + %d + %d = %d, carry = %d\n", $time, A, B, Cin, Sum, Carry);
       A = 238; B = 17; Cin = 0;
       #5
       $display("time=%d | %d + %d + %d = %d, carry = %d\n", $time, A, B, Cin, Sum, Carry);
       $finish;       
   end

endmodule