`timescale 1ns/1ps
module tb_fa;

reg a,b,c;
wire sum,co;

integer file_handle,i;

fa dut(a,b,c,sum,co);

task write_to_file;

//$fwrite(file_handle,"@time %gns a=%b b=%b co=%b sum=%b\n",$time,a,b,co,sum);
$fdisplay(file_handle,"@time %gns a=%b b=%b c=%b co=%b sum=%b\n",$time,a,b,c,co,sum);

endtask

initial

file_handle=$fopen("fa_output.txt","w");

initial

begin

	for(i=0; i<8; i=i+1)

		begin
			{a,b,c}=i;
			#1;
			write_to_file;
		end

#1;
$fclose(file_handle);

#1;

$stop;

end		

endmodule