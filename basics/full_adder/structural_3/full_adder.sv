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

	half_adder half_adder_1(.a(a),.s(loc1),.c(loc2), .b(b));
	half_adder half_adder_2(.a(loc1),.b(cin),.c(loc3), .s(s));
	or_2_gate or_2_gate_inst(.b(loc2),.a(loc3),.z(c));	
endmodule
