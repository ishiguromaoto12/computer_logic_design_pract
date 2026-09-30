`default_nettype none

module m_top();

    reg  r_a, r_b;
    wire w_s, w_c;

    initial begin
        #10 r_a <= 0; r_b <= 0;
        #10 r_a <= 0; r_b <= 1;
        #10 r_a <= 1; r_b <= 0;
        #10 r_a <= 1; r_b <= 1;
    end

    always @(*) begin
        #1;
        $write("%2d: %d %d -> %b %b\n",
               $time, r_a, r_b, w_c, w_s);
    end

    m_HA m_HA0 (
        .w_a(r_a),
        .w_b(r_b),
        .w_s(w_s),
        .w_c(w_c)
    );

endmodule


module m_HA(
    input  wire w_a,
    input  wire w_b,
    output wire w_s,
    output wire w_c
);

    assign w_c = w_a & w_b;
    assign w_s = w_a ^ w_b;

endmodule