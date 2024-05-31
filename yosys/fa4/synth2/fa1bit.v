module fa1bit(a,b,c,sum,co);

input a,b,c;
output sum,co;

ha ins1(a,b,s1,c1);
ha ins2(c,s1,sum,c2);
or(co,c1,c2);

endmodule
