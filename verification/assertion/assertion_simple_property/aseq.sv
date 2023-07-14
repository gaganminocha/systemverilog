`timescale 1ns/100ps

module tb;
   
    bit a;
    bit b;
    bit c;
    bit d;
    bit clk;

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
            c = 0; d = 0;
        #17 a = 1; b = 1;
            c = 1; d = 1;
        #6  a = 1; b = 1;
            c = 1; d = 1;
        #13 a = 0; b = 1;
            c = 0; d = 1;
        #8  a = 1; b = 1;
            c = 1; d = 1;
        #12 $stop;
    end
  	 
    //Property
    property prop;
    	@(posedge clk) a || b;
    endproperty

    assert property prop;
   
endmodule
