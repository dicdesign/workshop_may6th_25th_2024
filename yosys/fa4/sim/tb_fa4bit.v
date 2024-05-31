`timescale 1ns/1ns
module tb_fa4bit;

reg [3:0]a,b;
reg c;
wire [3:0]sum;
wire co;

fa4bit ins(a,b,c,sum,co);

initial
begin
$monitor("The sum of a %0d, b %0d and c %0d is sum %b and co %b ",a,b,c,sum,co);
c=0;
a=2;b=6;
#5;
a=7; b=9;
#5;
$finish;
end

endmodule
