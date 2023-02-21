`include "seq_det_1011_moore.sv"

module seq_det_1011_moore_tb();
	
	reg clk, rst, data_in;
	wire det;

	seq_det_1011_moore DUT_seq_det_1011_moore(clk, rst, data_in, det);

	initial
	begin
		clk = 1;
		forever #5 clk = ~clk;
	end

	initial
	begin
		$dumpfile("seq_det_1011_moore.vcd");
		$dumpvars(0, DUT_seq_det_1011_moore);
		rst = 1;
		#15 rst = 0;
		#10 data_in = 0;
		#10 data_in = 0;
		#10 data_in = 1;
		#10 data_in = 0;
		#10 data_in = 0;
		#10 data_in = 1;
		#10 data_in = 0;
		#10 data_in = 1;
		#10 data_in = 1;
		#10 data_in = 0;
		#10 data_in = 1;
		#10 data_in = 1;
		#10 data_in = 0;
		#10 data_in = 0;
		#10 data_in = 1;
		#10 data_in = 0;
		#10 data_in = 1;
		#10 data_in = 1;
		#10 data_in = 0;
		#10 data_in = 1;
		#10 data_in = 0;
		#10 data_in = 1;
		#10 data_in = 1;
		#30 $finish;
	end

endmodule
