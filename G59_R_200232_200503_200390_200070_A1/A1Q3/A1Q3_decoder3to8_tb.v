`include "A1Q3_decoder3to8.v"

module tb;

reg [2:0] in;
wire [7:0] Out;

decoder3to8 DECODER(in, Out);

initial begin
    in = 3'b000;
    #5
    $display("Time : %d | Decoder Input: %b | decoder Output: %b\n", $time, in, Out);
    in = 3'b001;
    #5
    $display("Time : %d | Decoder Input: %b | decoder Output: %b\n", $time, in, Out);
    in = 3'b010;
    #5
    $display("Time : %d | Decoder Input: %b | decoder Output: %b\n", $time, in, Out);
    in = 3'b011;
    #5
    $display("Time : %d | Decoder Input: %b | decoder Output: %b\n", $time, in, Out);
    in = 3'b100;
    #5
    $display("Time : %d | Decoder Input: %b | decoder Output: %b\n", $time, in, Out);
    in = 3'b101;
    #5
    $display("Time : %d | Decoder Input: %b | decoder Output: %b\n", $time, in, Out);
    in = 3'b110;
    #5
    $display("Time : %d | Decoder Input: %b | decoder Output: %b\n", $time, in, Out);
    in = 3'b111;
    #5
    $display("Time : %d | Decoder Input: %b | decoder Output: %b\n", $time, in, Out);
end

endmodule