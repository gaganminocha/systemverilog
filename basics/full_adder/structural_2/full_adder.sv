`include "../../half_adder/dataflow/half_adder.sv"

module or_2_gate(a,b,z);
	input wire a,b;
	output z;
	
	assign z = a || b;
	
endmodule

module full_adder(a,b,cin,s,c);
	input wire a,b,cin;
	output s,c;

	wire loc1,loc2,loc3;

	half_adder half_adder_1(a,b,loc1,loc2);
	half_adder half_adder_2(loc1,cin,s,loc3);
	or_2_gate or_2_gate_inst(loc2,loc3,c);	
endmodule
