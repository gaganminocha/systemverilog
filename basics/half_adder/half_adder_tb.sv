`timescale 1ns/100ps
`include "half_adder.sv"

module half_adder_tb;
	reg a,b;
	wire s,c;

	half_adder ha_inst(a,b,s,c);

	initial
	begin
		$monitor("time = %d\t a = %b\tb = %b\ts = %b\tc = %b", $time,a,b,s,c);
		$dumpfile("half_adder_wave.vcd");
		$dumpvars(0,half_adder_tb);
		a = 0;
		b = 0;
		
		#10 a = 1;
		#10 b = 1;
		//#10 $stop;
	end
endmodule
