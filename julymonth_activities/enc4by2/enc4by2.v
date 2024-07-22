module enc4by2(
input i0,i1,i2,i3,
output y0,y1);

nand(y0,i0,i1);
nand(y1,i0,i2);
endmodule