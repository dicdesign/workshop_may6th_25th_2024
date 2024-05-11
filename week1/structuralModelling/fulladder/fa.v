
module fa(input a,b,c,
          output sum,co);
  
  ha ins1(a,b,s1,c1);
  ha ins2(s1,c,sum,c2);
  orgate ins3(c1,c2,co);
    
endmodule
