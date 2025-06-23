module Add5TenBit(A, B, C, D, E, CI, Sum, CO);
    input [9:0] A, B, C, D, E;  // 10-bit inputs
    input CI;  // Carry-in
    output [9:0] Sum;  // 10-bit sum
    output CO;  // Carry-out

    // Internal carry wires
    wire [9:0] carry;

    // Full adders (FA) to add the partial products and carry
    FA fa0(.A(A[0]), .B(B[0]), .CI(CI), .S(Sum[0]), .CO(carry[0]));
    FA fa1(.A(A[1]), .B(B[1]), .CI(carry[0]), .S(Sum[1]), .CO(carry[1]));
    // Repeat for each bit as needed (e.g., fa2, fa3, etc.)
    // Finally:
    assign CO = carry[9];  // Final carry-out from the last full adder
endmodule
