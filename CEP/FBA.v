module FBA(A, B, S); 
    input [4:0] A, B;  
    output [5:0] S;  
    
    // Internal wires for carry propagation
    wire C0, C1, C2, C3;  
    
    // Instantiate 5 full adders
    FA Fa0( 
        .A(A[0]),  
        .B(B[0]),  
        .CI(1'b0),  
        .CO(C0),  
        .S(S[0])  
    ); 
    FA Fa1( 
        .A(A[1]),  
        .B(B[1]),  
        .CI(C0),  
        .CO(C1),  
        .S(S[1])  
    ); 
    FA Fa2( 
        .A(A[2]),  
        .B(B[2]),  
        .CI(C1),  
        .CO(C2),  
        .S(S[2])  
    ); 
    FA Fa3( 
        .A(A[3]),  
        .B(B[3]), 
        .CI(C2),  
        .CO(C3),  
        .S(S[3])  
    ); 
    FA Fa4( 
        .A(A[4]),  
        .B(B[4]),  
        .CI(C3),  
        .CO(S[5]),   // Carry-out stored in MSB of S
        .S(S[4])  
    ); 
endmodule
