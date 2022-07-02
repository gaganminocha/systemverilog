module half_adder (a, b, s, c);
	
	input wire a;
	input wire b;
	output reg s;
	output reg c;
	
	always @(a,b)
	begin
		s = a ^ b;
		c = a && b;
	end

endmodule
