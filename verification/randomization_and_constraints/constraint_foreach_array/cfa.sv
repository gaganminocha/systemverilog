// Constraint - foreach
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//

`timescale 1ns/100ps

class cfa;

    rand byte pkt[];
    rand byte addr[];

    constraint arr_size
    {
        pkt.size  < 5;
        addr.size == pkt.size;
    }

    constraint arr_vals
    {
        foreach (pkt[i])    pkt[i] inside {4, 6, 8, 9, [11:14], 20, 28};
        foreach (addr[i])   addr[i] ==  3 * i;
    }

    function void post_randomize();
        $display("time: %d  size_pkt: %d  size_addr: %d", $time, pkt.size, addr.size);
        //foreach (addr[i]) $display("time: %d  pkt[%d]: %d  addr[%d]: %d", $time, i, pkt[i], i, addr[i]);
        $display ("pkt=%p addr=%p", pkt, addr);
    endfunction    

endclass


module tb;
    cfa obj;

    initial
    begin
        obj = new();
        repeat (10) #5 obj.randomize();
    end

endmodule
