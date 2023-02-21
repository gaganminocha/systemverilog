module seq_det_1011_moore ( 	input clk,
				input rst,
				input data_in,
				output reg det);
	localparam 	s0 = 3'b000,
			s1 = 3'b001,
			s2 = 3'b010,
			s3 = 3'b011,
			s4 = 3'b100;

	reg [2:0] ps;
	reg [2:0] ns;

	always@(posedge clk or negedge rst)
	begin
		if (rst)
			ps <= s0;
		else
			ps <= ns;
	end

	always@(*)
	begin
		case(ps)
			s0: 
			begin
				det = 0;
				if(data_in)
					ns = s1;
				else
					ns = s0;
			end
			
			s1: 
			begin
				det = 0;
				if(data_in)
					ns = s1;
				else
					ns = s2;
			end
			
			s2: 
			begin
				det = 0;
				if(data_in)
					ns = s3;
				else
					ns = s0;
			end
			
			s3: 
			begin
				det = 0;
				if(data_in)
					ns = s4;
				else
					ns = s2;
			end
			
			s4: 
			begin
				det = 1;
				if(data_in)
					ns = s1;
				else
					ns = s2;
			end
		endcase
	end

endmodule
