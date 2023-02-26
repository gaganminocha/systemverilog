/*

03 - Wire TB

*/

`timescale 1ns/100ps
`include "hdlbits_03_wire.sv"

module top_module_tb;
	
	reg in;
	wire out;
	
	top_module top_module_inst(in, out);
	
	initial
	begin
		$monitor("Time = %0d in = %b\tout = %b",$time,in,out);
		#0  in = 0;
		#10 in = 1;
		#10 in = 0;
		#10 in = 1;
		#10 in = 0;
	end

	
endmodule
