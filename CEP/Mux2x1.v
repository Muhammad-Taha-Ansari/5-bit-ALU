module mux2x1(input [4:0] i0, input [4:0] i1, input select, output [4:0] o);
    assign o = select ? i1 : i0;
endmodule
