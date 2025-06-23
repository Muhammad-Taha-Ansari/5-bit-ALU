module AndGate(A, B, Y); 
    input [9:0] A, B;  
    output [9:0] Y;  

    // Perform bitwise AND for each bit
    and (Y[0], A[0], B[0]);
    and (Y[1], A[1], B[1]);
    and (Y[2], A[2], B[2]);
    and (Y[3], A[3], B[3]);
    and (Y[4], A[4], B[4]);
    and (Y[5], A[5], B[5]);
    and (Y[6], A[6], B[6]);
    and (Y[7], A[7], B[7]);
    and (Y[8], A[8], B[8]);
    and (Y[9], A[9], B[9]);
endmodule
