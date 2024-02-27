// Constraint Conflict - 'soft' resolve
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//

`timescale 1ns/1ps

class crv;
    rand bit [4:0] data;
    rand bit [4:0] addr;
   
    constraint first
    {
        soft data inside{[10:26]};
        soft addr == 4;
    }
  
    constraint second
    {
        data < 5;
    }

    function void post_randomize();
        $display("time = %t --> data = %d  &  addr = %d ",$time, data, addr);
    endfunction

endclass


module tb;
    crv obj;

    initial
    begin
        obj = new();
        repeat (5) #5 obj.randomize() with {addr == 7;} ;
    end

endmodule
