`timescale 1ns/100ps

module tb;
    bit a;
    bit b;
    bit c;
    bit d;

    //Clock Generation
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    //Values for a and b
    initial
    begin
             a = 0; b = 0; c = 1; d = 0; 
        #17  a = 1; b = 1; c = 1; d = 1;
        #6   a = 0; b = 0; c = 0; d = 0;
        #13  a = 0; b = 1; c = 1; d = 0;
        #8   a = 0; b = 0; c = 0; d = 1;
        #12 $stop;
    end
  	 
    //Sequence
    sequence seq;
	a ##2 b[*3];
    endsequence
    
    
    //Property
    property prop;
    	@(posedge clk) d |=> c within seq;
    endproperty

    assert property prop;
endmodule
