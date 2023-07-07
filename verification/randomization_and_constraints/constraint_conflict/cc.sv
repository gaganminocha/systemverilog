`timescale 1ns/1ps

class crv;
    rand bit [4:0] addr;
    rand bit [4:0] data;
   
    constraint first
    {
        addr <= 12;    
        data == 4;
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
        $monitor("time = %t\t addr = %d \t data = %d ",$time, obj.addr, obj.data);
        repeat (5)
        begin
            #5 obj.randomize() with {data == 7;} ;
        end
    end

endmodule


