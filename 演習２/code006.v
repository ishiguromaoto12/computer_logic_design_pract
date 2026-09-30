module main ();
initial #200 $display("hello world");
initial begin
    #100 $display("in Verilog HDL");
    #150 $display("When I am displayed?");
end
endmodule

//実行時刻
/*
時刻100：in Verilog HDL
時刻200：hello world
時刻250：When I am displayed?
*/