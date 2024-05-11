`timescale 1ns/1ps
module tb_ha;

reg a,b;
wire sum,co;

integer file_handle;

ha dut(a,b,sum,co);

task write_to_file;

//$fwrite(file_handle,"@time %gns a=%b b=%b co=%b sum=%b\n",$time,a,b,co,sum);
$fdisplay(file_handle,"@time %gns a=%b b=%b co=%b sum=%b\n",$time,a,b,co,sum);

endtask

initial

file_handle=$fopen("ha_output.txt","w");

initial

begin

a=0; b=0;
#1;
write_to_file;


b=1;
#1;
write_to_file;


a=1; b=0;
#1;
write_to_file;

b=1;
#1;
write_to_file;

#1;

$fclose(file_handle);

#1;

$stop;

end		

endmodule