module rand_randc_tb();
	
	class rand_packet;
		rand  bit rnd ;
		randc bit rndc;
	endclass

	rand_packet pack_obj ;
	//pack_obj = new();

	initial
	begin
		pack_obj = new();
		$monitor("rand = %d \t randc = %d \n", pack_obj.rnd, pack_obj.rndc);
		repeat(10) #5 pack_obj.randomize();
		$stop;
	end

endmodule
