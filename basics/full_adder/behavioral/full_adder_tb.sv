`timescale 1ns/100ps
`include "full_adder.sv"

module full_adder_tb;
	reg a,b,cin;
	wire s,c;

	full_adder full_adder_inst(a,b,cin,s,c);
	
	initial
	begin
		$monitor("time = %d\t a = %b\t b = %b\t cin = %b\t sum = %b\t carry = %b", $time,a,b,cin,s,c);
		$dumpfile("waveform.vcd");
		$dumpvars(0,full_adder_tb);

		a = 0;
		b = 0;
		cin = 0;

		#10
		a = 1;
		b = 1;
		cin = 1;
		
	end
endmodule
