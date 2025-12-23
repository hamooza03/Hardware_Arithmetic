module multiplier_tb();
    reg [3:0] a, b;
    wire [7:0] product;

    multiplier dut(
        .a(a),
        .b(b),
        .product(product)
    );

    initial begin
        $dumpfile("multiplier_tb.vcd");
        $dumpvars(0, multiplier_tb);

        $display("A     B     | PRODUCT");
        $display("-----------------------");
        $monitor("%b %b | %b", a, b, product);

        a = 4'b0000; b = 4'b0000; #10;
        a = 4'b0001; b = 4'b0010; #10;
        a = 4'b0011; b = 4'b0100; #10;
        a = 4'b1111; b = 4'b1111; #10;
        a = 4'b1010; b = 4'b0101; #10;
        #1 $finish;
    end