module main ();
    initial #200 $display("hello, world");
    initial begin
    #100 $display("in Verilog HDL");
    #150 $display("When am I displayed?");
    #1000 $display("Verilog is easy?");
end
endmodule

/*
時刻100  in Verilog HDL
時刻200  hello, world
時刻250  When am I displayed?
時刻1250 Verilog is easy?
*/
//vivadは1000nsまでしか実行されない