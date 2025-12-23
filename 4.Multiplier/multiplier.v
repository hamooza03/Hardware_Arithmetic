module multiplier(
    input [3:0] a,
    input [3:0] b,
    output [7:0] product
);
    wire [3:0] pp0, pp1, pp2, pp3;
    wire [4:0] sum1, sum2;
    wire c1, c2;

    // Product terms
    assign pp0 = a & {4{b[0]}};
    assign pp1 = a & {4{b[1]}};
    assign pp2 = a & {4{b[2]}};
    assign pp3 = a & {4{b[3]}};
 
    // Additions using RCA
    rca rca1(
        .a({1'b0, pp1}),
        .b({pp0[3:0], 1'b0}),
        .cin(1'b0),
        .sum(sum1),
        .cout(c1)
    );

    rca rca2(
        .a({1'b0, pp2}),
        .b({sum1[3:0], 2'b00}),
        .cin(1'b0),
        .sum(sum2),
        .cout(c2)
    );

    rca rca3(
        .a({1'b0, pp3}),
        .b({sum2[3:0], 3'b000}),
        .cin(1'b0),
        .sum(product[7:4]),
        .cout()
    );

    assign product[3:0] = pp0[3:0];

endmodule