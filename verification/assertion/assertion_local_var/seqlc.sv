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
             a = 0; b = 0; 
        #17  a = 1; b = 1;
        #6   a = 0; b = 0;
        #13  a = 0; b = 1;
        #8   a = 0; b = 0;
        #12 $stop;
    end
  	 
    //Sequence
    sequence seq;
	bit loc;
	   (a, loc = a) ##2 (b==loc); //value of 'a' changed after ##2, but stored in loc to compare
    endsequence
    
    
    //Property
    property prop;
    	@(posedge clk) seq;
    endproperty

    assert property prop;
endmodule
