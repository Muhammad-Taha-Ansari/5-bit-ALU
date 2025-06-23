module mux2x1(I0, I1, O, select); 
    input [10:0] I0, I1;  
    input select;  
    output [10:0] O;  

    // Select between I0 and I1 based on the select signal
    assign O = (select == 0) ? I0 : I1;  
endmodule
