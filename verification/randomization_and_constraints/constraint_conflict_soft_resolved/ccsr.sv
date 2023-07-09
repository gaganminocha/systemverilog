`timescale 1ns/1ps

class crv;
    rand bit [4:0] data;
   
    constraint first
    {
        soft data == 4;
    }
   
    function void post_randomize();
       $display("time = %t\t data = %d ",$time, data);
    endfunction

endclass


module tb;
    crv obj;

    initial
    begin
        obj = new();
        repeat (5)
        begin
            #5 obj.randomize() with {data == 7;} ;
        end
    end

endmodule
