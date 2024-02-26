`timescale 1ns/1ps

class crv;

    rand bit [4:0] addr;  
    
    constraint cons1 {
        addr inside {1, 2, [4:6], [10:28]}; 
    }
    
    constraint cons2 {
    addr <= 28; 
    }

endclass


module tb();

    crv obj;

    initial
    begin: randomizing
        obj = new();
        repeat(10) #5 obj.randomize() with {addr >= 20 && addr <= 24;};
    end

    initial
    begin: monitoring
        $monitor("time: %t, addr: %d",$time,obj.addr);
    end

endmodule
