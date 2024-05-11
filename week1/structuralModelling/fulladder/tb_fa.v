// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module tb_fa;
  
  reg a,b,c;
  wire sum,co;
  integer i;
  
  fa dut(a,b,c,sum,co); //Instantiation; here dut is called instantiation name
  
  initial
    begin
      for(i=0; i<8; i=i+1)
        begin
          {a,b,c}=i;  //i=0,1,2,3,4,5,6,7      (5)d=(101)b
          #5;
        end
      
      #5 $stop;      
      
    end
  
  initial
    begin
      $dumpfile("fa.vcd");
      $dumpvars(1);
    end
  
endmodule
