module xor_3_gate(a,b,c,z);
	input wire a,b,c;
	output z;
	
	assign z = a ^ b ^ c;
endmodule

module or_3_gate(a,b,c,z);
	input wire a,b,c;
	output z;
	
	assign z = a || b || c;
	
endmodule

module and_2_gate(a,b,z);
	input wire a,b;
	output z;
	
	assign z = a && b;
	
endmodule


module full_adder(a,b,cin,s,c);
	input wire a,b,cin;
	output s,c;

	wire loc1,loc2,loc3;

	xor_3_gate xor_3_gate_inst(a,b,cin,s);
	and_2_gate and_2_gate_inst1(a,b,loc1);
	and_2_gate and_2_gate_inst2(b,cin,loc2);
	and_2_gate and_2_gate_inst3(a,cin,loc3);
	or_3_gate or_3_gate_inst(loc1,loc2,loc3,c);	
endmodule
