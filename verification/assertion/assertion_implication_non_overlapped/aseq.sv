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
            mem_en = 0; req = 0; gnt=0;
        #17 mem_en = 0; req = 1; gnt=0;
        #6  mem_en = 1; req = 1; gnt=1;
        #13 mem_en = 0; req = 0; gnt=1;
        #8  mem_en = 0; req = 0; gnt=1;
        #12 $stop;
    end
  	 
    //Sequence
    sequence seq;
	req ##2 gnt;
    endsequence
    
    //Property
    property prop;
    	@(posedge clk) mem_en |=> seq;
    endproperty

    assert property prop;
   
endmodule
