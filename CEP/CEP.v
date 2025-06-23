module ALU(
    input [4:0] A, 
    input [4:0] B,
    input [2:0] ALU_Control,
    output reg [4:0] Result,
    output reg CarryOut
);
    wire [4:0] Sum, MaskResult, Shifted, AndResult;
    wire Cout;
    
    // Instantiate modules
    FA full_adder(.A(A), .B(B), .Cin(0), .Sum(Sum), .Cout(Cout));
    Mask mask_module(.A_bit(A), .mask(B), .result(MaskResult));
    Shift_Left shift_left(.A(A), .shifted(Shifted));
    AndGate and_gate(.A(A[0]), .B(B[0]), .Y(AndResult[0]));
    
    always @(*) begin
        case(ALU_Control)
            3'b000: begin
                Result = Sum;
                CarryOut = Cout;
            end
            3'b001: begin
                Result = MaskResult;
                CarryOut = 0;
            end
            3'b010: begin
                Result = Shifted;
                CarryOut = 0;
            end
            3'b011: begin
                Result = AndResult;
                CarryOut = 0;
            end
            default: begin
                Result = 5'b00000;
                CarryOut = 0;
            end
        endcase
    end
endmodule
