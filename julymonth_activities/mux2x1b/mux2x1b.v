module mux2x1b (
    input a, 
    input b, 
    input s, 
    output y
);
    assign y = s?b:a;
endmodule