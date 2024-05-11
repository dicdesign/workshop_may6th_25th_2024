// MUX4x1

module mux4x1(a,b,c,d,s1,s0,y);
  
  input a,b,c,d,s1,s0;
  output y;
  
  
  not(s1bar,s1);
  not(s0bar,s0);
  
  and(y0, a,s0bar,s1bar);
  and(y1,b, s0,s1bar);
  and(y2,c,s0bar,s1);
  and(y3,d,s0,s1);
  
  or(y,y0,y1,y2,y3);
  
endmodule
