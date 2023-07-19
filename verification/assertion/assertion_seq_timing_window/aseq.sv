`timescale 1ns/100ps

module tb;
   
    bit mem_en;
    bit req;
    bit gnt;
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
             req = 0; gnt=0;
        #17  req = 1; gnt=0;
        #6   req = 0; gnt=0;
        #13  req = 0; gnt=1;
        #8   req = 0; gnt=0;
        #12 $stop;
    end
  	 
    //Sequence
    sequence seq;
	req ##[1:5] gnt;
    endsequence
    
    //Property
    property prop;
    	@(posedge clk) seq;
    endproperty

    assert property prop;
   
endmodule
