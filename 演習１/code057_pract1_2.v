/**************************************************************************/
/* code057.v                          For CSC.T341 CLD ArchLab TOKYO TECH */
/**************************************************************************/

module m_main (w_clk, w_led);

    input  wire       w_clk;
    output wire [3:0] w_led;

    reg [26:0] r_cnt = 0; //1秒を数えるカウンタ
    reg [3:0] r_out = 0; //表示する４ビット値

    always @(posedge w_clk) begin
        r_cnt <= (r_cnt == 99999999) ? 0 : r_cnt + 1;
        r_out <= (r_cnt == 99999999) ? r_out + 1 : r_out;
    end

    assign w_led = r_out;
    // vio_0 vio_00(w_clk, w_led[3], w_led[2], w_led[1], w_led[0]);

endmodule