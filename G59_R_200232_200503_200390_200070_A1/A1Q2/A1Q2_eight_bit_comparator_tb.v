`include "A1Q2_eight_bit_comparator.v"

module eight_bit_comparator_tb;

    reg [7:0] a;
    reg [7:0] b;
    
    wire e;
    wire g;
    wire l;

    eight_bit_comparator COMPARE(a, b, e, g, l);


    initial begin
        a = 10; b = 20;
        #5
        $display("time = %d | a = %d, b = %d | G = %d, E = %d, L = %d\n", $time, a, b, g, e, l);
        a = 10; b = 10;
        #5
        $display("time = %d | a = %d, b = %d | G = %d, E = %d, L = %d\n", $time, a, b, g, e, l);
        a = 1; b = 0;
        #5
        $display("time = %d | a = %d, b = %d | G = %d, E = %d, L = %d\n", $time, a, b, g, e, l);
        a = 255; b = 255;
        #5
        $display("time = %d | a = %d, b = %d | G = %d, E = %d, L = %d\n", $time, a, b, g, e, l);
        a = 0; b = 9;
        #5
        $display("time = %d | a = %d, b = %d | G = %d, E = %d, L = %d\n", $time, a, b, g, e, l);
        a = 150; b = 111;
        #5
        $display("time = %d | a = %d, b = %d | G = %d, E = %d, L = %d\n", $time, a, b, g, e, l);
        a = 12; b = 20;
        #5
        $display("time = %d | a = %d, b = %d | G = %d, E = %d, L = %d\n", $time, a, b, g, e, l);
        a = 19; b = 91;
        #5
        $display("time = %d | a = %d, b = %d | G = %d, E = %d, L = %d\n", $time, a, b, g, e, l);
        a = 38; b = 29;
        #5
        $display("time = %d | a = %d, b = %d | G = %d, E = %d, L = %d\n", $time, a, b, g, e, l);
        a = 87; b = 14;
        #5
        $display("time = %d | a = %d, b = %d | G = %d, E = %d, L = %d\n", $time, a, b, g, e, l);
        a = 35; b = 75;
        #5
        $display("time = %d | a = %d, b = %d | G = %d, E = %d, L = %d\n", $time, a, b, g, e, l);
        a = 46; b = 23;
        #5
        $display("time = %d | a = %d, b = %d | G = %d, E = %d, L = %d\n", $time, a, b, g, e, l);
        a = 56; b = 75;
        #5
        $display("time = %d | a = %d, b = %d | G = %d, E = %d, L = %d\n", $time, a, b, g, e, l);
        a = 22; b = 220;
        #5
        $display("time = %d | a = %d, b = %d | G = %d, E = %d, L = %d\n", $time, a, b, g, e, l);
        a = 99; b = 99;
        #5
        $display("time = %d | a = %d, b = %d | G = %d, E = %d, L = %d\n", $time, a, b, g, e, l);
    end

endmodule