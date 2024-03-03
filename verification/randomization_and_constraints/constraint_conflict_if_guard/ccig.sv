// Constraint Conflict - if_guard resolve
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//

`timescale 1ns/1ps

class crv;
    rand bit [4:0] addr;
   
    constraint first
    {
        addr <= 12;    
    }

    constraint second
    {
        addr >= 23;
    }
endclass


module tb;
    crv obj;

    initial
    begin
        obj = new();
        $monitor("time = %t\t addr = %d ",$time, obj.addr);
        repeat (5)
        begin
            #5
            if(!obj.randomize())
                $error("Error Randomization");
        end
    end

endmodule


