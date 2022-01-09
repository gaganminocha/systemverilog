/*

01 - Step One TB

*/

`timescale 1ns/100ps
`include "hdlbits_01_step_one.sv"

module top_module_tb;
	
	wire one;
	
	top_module top_module_inst(one);
	
	initial
	begin
		#0  $display("Time = %0d one = %b",$time,one);
		#10 $display("Time = %0d one = %b",$time,one);
		#10 $display("Time = %0d one = %b",$time,one);
		#10 $display("Time = %0d one = %b",$time,one);
	end

	
endmodule
