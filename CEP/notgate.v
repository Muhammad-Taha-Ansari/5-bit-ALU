module notgate(A, NA);
    input [4:0] A;  // 5-bit input
    output [4:0] NA;  // 5-bit output (negation of A)

    // Perform bitwise NOT operation on each bit of A
    assign NA = ~A; 
endmodule
