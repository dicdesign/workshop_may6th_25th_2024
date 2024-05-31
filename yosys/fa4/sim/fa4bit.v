module fa4bit(a,b,c,sum,co);

input [3:0]a,b;
input c;
output [3:0]sum;
output co;

fa1bit ins1(a[0],b[0],c,sum[0],c1);
fa1bit ins2(a[1],b[1],c1,sum[1],c2);
fa1bit ins3(a[2],b[2],c2,sum[2],c3);
fa1bit ins4(a[3],b[3],c3,sum[3],co);

endmodule
