module xor_gate(a,b,c);
	
	input wire a,b;
	output c;
	
	assign c = a ^ b;
	
endmodule

module and_gate(a,b,c);
	
	input wire a,b;
	output c;
	
	assign c = a && b;
	
endmodule


module half_adder (a, b, s, c);
	
	input wire a;
	input wire b;
	output s;
	output c;
	
	xor_gate xor_gate_inst(a,b,s);
	and_gate and_gate_inst(a,b,c);

endmodule
