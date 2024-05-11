
module ha(input a,b,
          output sum,co);
  
  assign sum=a^b,
         co=a&b;
    
endmodule
