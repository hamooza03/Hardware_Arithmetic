module adder_subtractor(
    input signed [15:0] a,
    input signed [15:0] b,
    input mode, // 0 for addition, 1 for subtraction
    output signed [15:0] result,
    output cout
);
    wire [15:0] b_bar;
    wire cin;
    // Subtraction for 2'c comp
    assign cin = mode;
    assign b_bar = mode ? ~b : b;

    wire c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15;

    full_adder fa0(
        .a(a[0]),
        .b(b_bar[0]),
        .cin(cin),
        .sum(result[0]),
        .cout(c1)
    );

    full_adder fa1(
        .a(a[1]),
        .b(b_bar[1]),
        .cin(c1),
        .sum(result[1]),
        .cout(c2)
    );

    full_adder fa2(
        .a(a[2]),
        .b(b_bar[2]),
        .cin(c2),
        .sum(result[2]),
        .cout(c3)
    );

    full_adder fa3(
        .a(a[3]),
        .b(b_bar[3]),
        .cin(c3),
        .sum(result[3]),
        .cout(c4)
    );

    full_adder fa4(
        .a(a[4]),
        .b(b_bar[4]),
        .cin(c4),
        .sum(result[4]),
        .cout(c5)
    );

    full_adder fa5(
        .a(a[5]),
        .b(b_bar[5]),
        .cin(c5),
        .sum(result[5]),
        .cout(c6)
    );

    full_adder fa6(
        .a(a[6]),
        .b(b_bar[6]),
        .cin(c6),
        .sum(result[6]),
        .cout(c7)
    );

    full_adder fa7(
        .a(a[7]),
        .b(b_bar[7]),
        .cin(c7),
        .sum(result[7]),
        .cout(c8)
    );

    full_adder fa8(
        .a(a[8]),
        .b(b_bar[8]),
        .cin(c8),
        .sum(result[8]),
        .cout(c9)
    );

    full_adder fa9(
        .a(a[9]),
        .b(b_bar[9]),
        .cin(c9),
        .sum(result[9]),
        .cout(c10)
    );

    full_adder fa10(
        .a(a[10]),
        .b(b_bar[10]),
        .cin(c10),
        .sum(result[10]),
        .cout(c11)
    );

    full_adder fa11(
        .a(a[11]),
        .b(b_bar[11]),
        .cin(c11),
        .sum(result[11]),
        .cout(c12)
    );

    full_adder fa12(
        .a(a[12]),
        .b(b_bar[12]),
        .cin(c12),
        .sum(result[12]),
        .cout(c13)
    );

    full_adder fa13(
        .a(a[13]),
        .b(b_bar[13]),
        .cin(c13),
        .sum(result[13]),
        .cout(c14)
    );

    full_adder fa14(
        .a(a[14]),
        .b(b_bar[14]),
        .cin(c14),
        .sum(result[14]),
        .cout(c15)
    );

    full_adder fa15(
        .a(a[15]),
        .b(b_bar[15]),
        .cin(c15),
        .sum(result[15]),
        .cout(cout)
    );

endmodule