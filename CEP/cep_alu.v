module cep_alu (
    input [4:0] A, B,
    input ALUOp0, ALUOp1,
    output [10:0] D
);

    wire [5:0] AO;       // Adder output
    wire [6:0] SO;       // Subtractor output
    wire [10:0] M;       // Multiplier output
    wire [10:0] temp_AO; // Extended Adder output
    wire [10:0] temp_SO; // Extended Subtractor output
    wire [10:0] wire1;   // Intermediate mux output

    // Instantiate the 5-bit Adder
    FBA adder (
        .A(A),
        .B(B),
        .S(AO)
    );

    // Zero-extend Adder result to 11 bits
    assign temp_AO = {5'b00000, AO};

    // Instantiate the 5-bit Subtractor
    FBS sub (
        .A(A),
        .B(B),
        .diff(SO)
    );

    // Zero-extend Subtractor result to 11 bits
    assign temp_SO = {4'b0000, SO};

    // Instantiate the Multiplier (shift-add based)
    multiplier mult (
        .A(A),
        .B(B),
        .M(M)
    );

    // First multiplexer: selects between Adder and Subtractor
    mux2x1 mux1 (
        .I0(temp_AO),
        .I1(temp_SO),
        .select(ALUOp0),
        .O(wire1)
    );

    // Second multiplexer: selects between output of mux1 and Multiplier
    mux2x1 mux2 (
        .I0(wire1),
        .I1(M),
        .select(ALUOp1),
        .O(D)
    );

endmodule
