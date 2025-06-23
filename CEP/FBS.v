module FBS(input [4:0] A, input [4:0] B, output [9:0] result);
    assign result = A << B;
endmodule
