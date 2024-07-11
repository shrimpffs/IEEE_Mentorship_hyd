module mux2x1(input a,b,s,output y);

not(sbar,s);
and(w1,a,sbar);
and(w2,b,s);
or(y, w1,w2);

endmodule