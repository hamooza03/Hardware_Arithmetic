module cla_tb();
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    cla dut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("cla_tb.vcd");
        $dumpvars(0, cla_tb);

        $display("A       B       CIN | SUM     COUT");
        $display("-------------------------------");
        $monitor("%b %b  %b | %b  %b", a, b, cin, sum, cout);

        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        a = 4'b0001; b = 4'b0010; cin = 0; #10;
        a = 4'b0011; b = 4'b0101; cin = 1; #10;
        a = 4'b0110; b = 4'b1001; cin = 0; #10;
        a = 4'b1111; b = 4'b1111; cin = 1; #10;
        #1 $finish;
    end

endmodule