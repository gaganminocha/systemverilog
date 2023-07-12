`timescale 1ns/100ps

module tb;
    wire a;
    wire b;
    wire c;
    wire d;
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
   
    //Assert, generally NOT a part of tb.
    always @ (posedge clk)
    begin
        assert (a&&b);
    end

    //Assert with pass and fail statements
    always @ (posedge clk)
    begin
        assert (a&&b)
        begin
            $display("Time: %d", $time);
            $display("Assert Pass");
        end
        else
        begin
            $display("Time: %d", $time);
            $info("Assert Fail");
        end
    end
endmodule
