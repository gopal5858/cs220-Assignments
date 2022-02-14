module one_bit_comparator(a, b, c, d, e, e_n, g_n, l_n);

    input a;
    input b;
    input c;
    input d;
    input e;

    output wire e_n;
    output wire g_n;
    output wire l_n;

    assign g_n = d | (c & (a & (~b)));
    assign e_n= c & ~(a^b);
    assign l_n = e | (c & ((~a) & b)); 

endmodule