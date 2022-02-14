`include "A1Q2_one_bit_comparator.v"

module eight_bit_comparator(a, b, e, g, l);

    input [7:0] a;
    input [7:0] b;

    output wire e;
    output wire g;
    output wire l;

    wire [6:0] mid_e;
    wire [6:0] mid_g;
    wire [6:0] mid_l;
    

    one_bit_comparator C1 (a[7], b[7], 1'b1, 1'b0, 1'b0, mid_e[0], mid_g[0], mid_l[0]);
    one_bit_comparator C2 (a[6], b[6], mid_e[0], mid_g[0], mid_l[0], mid_e[1], mid_g[1], mid_l[1]);
    one_bit_comparator C3 (a[5], b[5], mid_e[1], mid_g[1], mid_l[1], mid_e[2], mid_g[2], mid_l[2]);
    one_bit_comparator C4 (a[4], b[4], mid_e[2], mid_g[2], mid_l[2], mid_e[3], mid_g[3], mid_l[3]);
    one_bit_comparator C5 (a[3], b[3], mid_e[3], mid_g[3], mid_l[3], mid_e[4], mid_g[4], mid_l[4]);
    one_bit_comparator C6 (a[2], b[2], mid_e[4], mid_g[4], mid_l[4], mid_e[5], mid_g[5], mid_l[5]);
    one_bit_comparator C7 (a[1], b[1], mid_e[5], mid_g[5], mid_l[5], mid_e[6], mid_g[6], mid_l[6]);
    one_bit_comparator C8 (a[0], b[0], mid_e[6], mid_g[6], mid_l[6], e, g, l);

endmodule