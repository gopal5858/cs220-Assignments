`include "./A1Q4_priority_encoder8to3.v"

module tb;

reg [7:0] in;
wire [2:0] encodedOut;

priority_encoder8to3 ENCODER(in, encodedOut);

initial begin
    in = 8'b00010000;
    #5
    $display("Time = %d | Input: %b | Encoded: %b\n", $time, in, encodedOut);
    in = 8'b01000100;
    #5
    $display("Time = %d | Input: %b | Encoded: %b\n", $time, in, encodedOut);
    in = 8'b11110000;
    #5
    $display("Time = %d | Input: %b | Encoded: %b\n", $time, in, encodedOut);
    in = 8'b00010001;
    #5
    $display("Time = %d | Input: %b | Encoded: %b\n", $time, in, encodedOut);
    in = 8'b11111111;
    #5
    $display("Time = %d | Input: %b | Encoded: %b\n", $time, in, encodedOut);
    in = 8'b00011000;
    #5
    $display("Time = %d | Input: %b | Encoded: %b\n", $time, in, encodedOut);
    in = 8'b00000110;
   #5
    $display("Time = %d | Input: %b | Encoded: %b\n", $time, in, encodedOut);
    in = 8'b01010100;
    #5
    $display("Time = %d | Input: %b | Encoded: %b\n", $time, in, encodedOut);
    in = 8'b00011101;
    #5
    $display("Time = %d | Input: %b | Encoded: %b\n", $time, in, encodedOut);
    in = 8'b00100000;
    #5
    $display("Time = %d | Input: %b | Encoded: %b\n", $time, in, encodedOut);
    in = 8'b11000000;
    #5
    $display("Time = %d | Input: %b | Encoded: %b\n", $time, in, encodedOut);
end

endmodule