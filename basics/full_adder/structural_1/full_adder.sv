module xor_3_gate(a,b,c,z);
	input wire a,b,c;
	output z;
	
	assign z = a ^ b ^ c;
endmodule

module and_3_gate(a,b,c,z);
	input wire a,b,c;
	output z;
	
	assign z = a && b && c;
	
endmodule

module full_adder
endmodule
