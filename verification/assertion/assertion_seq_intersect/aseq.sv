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
             a = 0; b = 0; c = 0; d = 0; 
        #17  a = 1; b = 1; c = 1; d = 0;
        #6   a = 0; b = 0; c = 1; d = 1;
        #13  a = 0; b = 1; c = 0; d = 1;
        #8   a = 0; b = 0; c = 1; d = 0;
        #12 $stop;
    end
  	 
    //Sequence
    sequence seq1;
	a ##2 b;
    endsequence
    
    //Sequence
    sequence seq2;
	c ##[1:3] d;
    endsequence
    
    //Property
    property prop;
    	@(posedge clk) seq1 intersect seq2;
    endproperty

    assert property prop;
endmodule
