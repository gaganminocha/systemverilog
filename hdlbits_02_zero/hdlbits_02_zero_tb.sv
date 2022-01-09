/*

02 - Zero TB

*/

`timescale 1ns/100ps
`include "hdlbits_02_zero.sv"

module top_module_tb;
	
	wire one;
	
	top_module top_module_inst(zero);
	
	initial
	begin
		#0  $display("Time = %0d one = %b",$time,zero);
		#10 $display("Time = %0d one = %b",$time,zero);
		#10 $display("Time = %0d one = %b",$time,zero);
		#10 $display("Time = %0d one = %b",$time,zero);
	end

	
endmodule
