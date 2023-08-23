`timescale 1ns/100ps

module tb;
   
    reg a;
    reg b;
    reg clk;

    //Clock Generation
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    //Values for a and b
    initial
    begin
            a = 0; 
        #17 a = 1; 
        #6  a = 1; 
        #13 a = 0; 
        #8  a = 1; 
        #12 $stop;
    end
  	 
    //Property
    property prop;
    	@(posedge clk) $stable(a);
    endproperty

    assert property prop;
   
endmodule
