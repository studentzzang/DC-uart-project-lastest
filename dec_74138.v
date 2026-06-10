module dec_74138 (
    input A,
    input B,
    input C,
    input G1,
    input G2AN,
    input G2BN,
    output Y0N,
    output Y1N,
    output Y2N,
    output Y3N,
    output Y4N,
    output Y5N,
    output Y6N,
    output Y7N
);

wire en;

assign en = G1 & ~G2AN & ~G2BN;

assign Y0N = ~(en & ~C & ~B & ~A);
assign Y1N = ~(en & ~C & ~B &  A);
assign Y2N = ~(en & ~C &  B & ~A);
assign Y3N = ~(en & ~C &  B &  A);
assign Y4N = ~(en &  C & ~B & ~A);
assign Y5N = ~(en &  C & ~B &  A);
assign Y6N = ~(en &  C &  B & ~A);
assign Y7N = ~(en &  C &  B &  A);

endmodule