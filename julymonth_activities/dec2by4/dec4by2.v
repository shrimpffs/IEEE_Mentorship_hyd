module dec4by2(
input i0,i1,
output y0,y1,y2,y3);
not(i0bar,i0);
not(i1bar,i1);

and(y0,i0bar,i1bar);
and(y1,i0bar,i1);
and(y2,i0,i1bar);
and(y3,i0,i1);

endmodule