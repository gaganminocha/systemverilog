// Constraint - function calling inside constraint
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//

`timescale 1ns/100ps

class cf;

    rand byte pkt[];
    rand bit [3:0] addr;

    function bit [4:0] size_maker(bit [3:0] addr);
        size_maker = addr + 10;  
    endfunction

    constraint pkt_s
    {
        pkt.size == size_maker(addr);
    }

    function void post_randomize();
        $display("time: %d, addr: %d, pkt_size: %d", $time, addr, pkt.size);
    endfunction

endclass


module tb;
    cf obj;

    initial
    begin
        obj = new();
        repeat (10)
        begin
            #5 obj.randomize();
            $display("sm: %d", obj.size_maker(obj.addr));
        end
    end

endmodule


