`timescale 1ns/1ps

class ci;
    rand bit [4:0] addr;
    rand bit [2:0] pkt;
   
    constraint addr_vals
    {
        addr inside {0,1,[4:6],[8:11],13,14,16,[18:23],[27:30]};
    }
   
    constraint pkt_vals
    {
        !(pkt inside{0,2,[4:6]});
    }
   
endclass


module tb;
    ci obj;

    initial
    begin
       
        obj = new();    
        repeat (20)
        begin
            #5 obj.randomize();
            $display("Time: %d\t addr: %d\t pkt: %d", $time, obj.addr, obj.pkt );
        end
    end

endmodule
