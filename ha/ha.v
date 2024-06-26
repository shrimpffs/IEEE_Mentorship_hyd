// Code your design here
module ha(a,b,sum,co);
  
  input a,b;
  output sum,co;
  
  assign sum=a^b, co=a&b;
  
  
endmodule
