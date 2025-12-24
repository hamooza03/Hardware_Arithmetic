module comparator(
    input clk,
    input reset,
    input signed [15:0] A,
    input signed [15:0] B,
    output reg EQ,
    output reg NEQ,
    output reg GT,
    output reg GTEQ,
    output reg LT,
    output reg LTEQ
);
    status_reg status(
        .clk(clk),
        .reset(reset),
        .A(A),
        .B(B),
        .Z(Z),
        .N(N),
        .C(C),
        .V(V)
    );
    
    // These are directly connected to flags from the status register
    // Breakdown in README.... file
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            EQ <= 0;
            NEQ <= 0;
            GT <= 0;
            GTE <= 0;
            LT <= 0;
            LTEQ <= 0;
        end else begin
            EQ <= Z;
            NEQ <= ~Z;
            LT <= N ^ V;
            LTEQ <= EQ | LT;
            GT <= GEQ & NEQ;
            GTEQ <= N ^ V;
        end
    end

endmodule