module status_reg(
    input clk,
    input reset,
    input signed [15:0] A,
    input signed [15:0] B,
    output Z,
    output N,
    output C,
    output V
);
    wire signed [15:0] result;

    // Carry computation
    wire cadd, csub;
    wire[15:0] R_add, R_sub;

    adder_subtractor alu_add(
        .a(A),
        .b(B),
        .mode(1'b0), // Addition mode
        .result(R_add),
        .cout(cadd)
    );

    adder_subtractor alu_sub(
        .a(A),
        .b(B),
        .mode(1'b1), // Subtraction mode
        .result(R_sub), // Unused
        .cout(csub)
    );

    // Overflow Computation
    wire V_add, V_sub;
    assign V_add = (A[15] == B[15]) && (R_add[15] != A[15]);
    assign V_sub = (A[15] != B[15]) && (R_sub[15] != A[15]);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            result <= 0;
        end else begin
            // Zero Flag
            Z <= (result == 0);
            // Negative Flag
            N <= result[WIDTH-1];
            // Carry Flag
            C <= cadd | csub;
            // Overflow Flag
            V <= V_add | V_sub;
        end
    end


endmodule