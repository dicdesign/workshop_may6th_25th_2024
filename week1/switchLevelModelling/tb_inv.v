`timescale 1ns/1ps
module tb;

wire inv_out;
reg inv_in;

cmos_inverter dut(inv_out, inv_in);

initial

begin
inv_in=1'b0;
repeat(20)
begin
inv_in=~inv_in;
#5;
end
end
endmodule