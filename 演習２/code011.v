module main();
    reg a,b;
    wire c;
    assign c = a & b;

    initial begin
        #10 a <= 0; b <= 0;
        #10 
    end