module subtractor(
    input signed [3:0] a,
    input signed [3:0] b,
    input bin,
    output signed [3:0] diff,
    output bout
);
    // 2s Complement Subtraction needs to add 1 to inverted b
    assign bin = 1'b1;
    // invert b
    wire [3:0] b_comp;
    assign b_comp = ~b;

    wire c1, c2, c3;

    full_adder fa0(
        .a(a[0]),
        .b(b_comp[0]),
        .cin(in),
        .sum(diff[0]),
        .cout(c1)
    );

    full_adder fa1(
        .a(a[1]),
        .b(b_comp[1]),
        .cin(),
        .sum(diff[1]),
        .cout(c2)
    );

    full_adder fa2(
        .a(a[2]),
        .b(b_comp[2]),
        .cin(),
        .sum(diff[2]),
        .cout(c3)
    );

    full_adder fa3(
        .a(a[3]),
        .b(b_comp[3]),
        .cin(),
        .sum(diff[3]),
        .cout(bout)
    );


endmodule