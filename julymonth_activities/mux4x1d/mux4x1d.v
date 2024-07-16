module mux4x1d(a,b,c,d,s0,s1,y);
input a,b,c,d,s0,s1;
output y;

mux2x1d g1(a,b,s0,w1);
mux2x1d g2(c,d,s0,w2);
mux2x1d g3(w1,w2,s1,y);

endmodule