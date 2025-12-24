module subtractor_tb();
    reg a, b, bin;
    wire diff, bout;
    
    subtractor dut(
        .a(a),
        .b(b),
        .bin(bin),
        .diff(diff),
        .bout(bout)
    );

    initial begin
        $dumpfile("subtractor_tb.vcd");
        $dumpvars(0, subtractor_tb);

        $display("A B BIN | DIFF BOUT");
        $display("--------------------");
        $monitor("%b %b  %b  |  %b   %b", a, b, bin, diff, bout);

        a = 0; b = 0; bin = 0; #10;
        a = 0; b = 0; bin = 1; #10;
        a = 0; b = 1; bin = 0; #10;
        a = 0; b = 1; bin = 1; #10;
        a = 1; b = 0; bin = 0; #10;
        a = 1; b = 0; bin = 1; #10;
        a = 1; b = 1; bin = 0; #10;
        a = 1; b = 1; bin = 1; #10;
        #1 $finish;
    end


endmodule