module fa(input a,b,cin, output sum,cy);

xor(sum,a,b,cin);
xor(w1,a,b);

and(w2,cin,w1);
and(w3,a,b);
or(cy,w2,w3);

endmodule