module adder_subtractor_tb();
    reg a, b, mode, cin;
    wire result, cout;

    adder_subtractor dut(
        .a(a),
        .b(b),
        .mode(mode),
        .cin(cin),
        .result(result),
        .cout(cout)
    );

    initial begin
        $dumpfile("adder_subtractor_tb.vcd");
        $dumpvars(0, adder_subtractor_tb);

        $display("A B MODE CIN | RESULT COUT");
        $display("--------------------------");
        $monitor("%b %b  %b   %b  |   %b    %b", a, b, mode, cin, result, cout);

        // Test addition (mode = 0)
        mode = 0;
        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 1; cin = 0; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;

        // Test subtraction (mode = 1)
        mode = 1;
        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 1; cin = 0; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;

        #1 $finish;
    end
endmodule