/*

04 - Wire4 TB

*/

`timescale 1ns/100ps
`include "hdlbits_04_wire4.v"

module top_module_tb;
	
	reg a,b,c;
	wire w,x,y,z;
	
	top_module top_module_inst(a,b,c,w,x,y,z);
	
	initial
	begin
		$monitor("Time = %0d\ta = %b\tb = %b\tc = %b\tw = %b\tx = %b\ty = %b\tz = %b",$time,a,b,c,w,x,y,z);

		#0  a = 0; b = 0; c = 0;
		#10 a = 0; b = 0; c = 1;
		#10 a = 0; b = 1; c = 1;
		#10 a = 1; b = 0; c = 1;
		#10 a = 1; b = 1; c = 0;
	end

	
endmodule
