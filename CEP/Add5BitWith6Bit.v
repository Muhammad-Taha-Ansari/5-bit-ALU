// Adds a 5-bit input A and a 6-bit input B to output a 7-bit result
module Add5BitWith6Bit(A, B, Sum);
    input [4:0] A; // 5-bit input A
    input [5:0] B; // 6-bit input B
    output [6:0] Sum; // 7-bit output Sum

    // Internal wire for carry propagation between adders
    wire [5:0] carry;

    // Full Adder for the first bit (A[0] + B[0])
    FA fa0(
        .A(A[0]),
        .B(B[0]),
        .CI(1'b0),
        .S(Sum[0]),
        .CO(carry[0])
    );

    // Full Adder for the second bit (A[1] + B[1] + carry)
    FA fa1(
        .A(A[1]),
        .B(B[1]),
        .CI(carry[0]),
        .S(Sum[1]),
        .CO(carry[1])
    );

    // Full Adder for the third bit (A[2] + B[2] + carry)
    FA fa2(
        .A(A[2]),
        .B(B[2]),
        .CI(carry[1]),
        .S(Sum[2]),
        .CO(carry[2])
    );

    // Full Adder for the fourth bit (A[3] + B[3] + carry)
    FA fa3(
        .A(A[3]),
        .B(B[3]),
        .CI(carry[2]),
        .S(Sum[3]),
        .CO(carry[3])
    );

    // Full Adder for the fifth bit (A[4] + B[4] + carry)
    FA fa4(
        .A(A[4]),
        .B(B[4]),
        .CI(carry[3]),
        .S(Sum[4]),
        .CO(carry[4])
    );

    // Full Adder for the sixth bit (B[5] + 0 + carry)
    FA fa5(
        .A(1'b0),
        .B(B[5]),
        .CI(carry[4]),
        .S(Sum[5]),
        .CO(Sum[6])  // Final carry-out is part of the sum
    );
endmodule

// Full Adder (FA) module used in the Add5BitWith6Bit module
module FA(A, B, CI, S, CO);
    input A, B, CI;
    output S, CO;

    assign S = A ^ B ^ CI; // Sum calculation using XOR
    assign CO = (A & B) | (B & CI) | (A & CI); // Carry-out calculation using AND and OR gates
endmodule
