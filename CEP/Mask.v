module Mask(input [4:0] A_bit, input [4:0] mask, output [4:0] result);
    assign result = A_bit & mask;
endmodule
