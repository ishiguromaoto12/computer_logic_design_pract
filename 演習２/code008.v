module main();
    initial #200 $display("%3d hello,world",$time);
    initial begin
        #100 $display("%3d in Verilog HDL",$time);
        #150 $display("%3d When am I displayed",$time);
    end
    initial #210 $finish;
endmodule

/*このコードでは時刻210でシミュレーションが終了する．
• Vivadoのデフォルトの設定では1000nsシミュレーションするが，それより短い時間のシミュ
レーションや，ある条件でシミュレーションを終了させたい場合に用いると良い．
*/