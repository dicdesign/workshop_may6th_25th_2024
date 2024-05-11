`timescale 1ns/1ps
module tb_mux4x1;
  
   reg a,b,c,d,s1,s0;
   wire y;
  
  mux4x1 dut(a,b,c,d,s1,s0,y);
  
  // uut - unit under test
  // cut - component under test
  // cut - circuit under test
  // dut - design under test
  
  initial
    begin
      a=0; b=1; c=0; d=1; s1=0; s0=0;
      #5 s0=1;
      #5 s1=1; s0=0;
      #5 s0=1;
      #5 $stop;
    end
  
  initial
    begin
      $dumpfile("mux4x1.vcd");
      $dumpvars(1);
    end
  
endmodule
