`timescale 1ns/1ps

class crv;
    rand  bit [4:0] addr;
   
    constraint cons {
        addr inside {1, 2, [4:6], [10:28]};
    }

endclass


module tb;
    crv obj;

    initial
    begin
        obj = new();
        $monitor("time = %t\t addr = %d ",$time, obj.addr);
        repeat (10)
        begin
            #5 obj.randomize() with {addr inside {[20:24]};};
        end
    end

endmodule
