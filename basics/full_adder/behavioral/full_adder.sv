module full_adder(a,b,cin,s,c);
	input wire a,b,cin;
	output reg s,c;
	
	always @(*)
	begin
		s = a ^ b ^ cin;
		c = (a&&b) || (b&&cin) || (cin&&a); 
	end
endmodule
