// Constraint Implication
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//


`timescale 1ns/100ps

class cimp;
    typedef enum {xs, s, m, l, xl} size;
   
    rand bit [4:0] pkt;
    rand size pkt_size;

    constraint ps
    {
        pkt_size == xs -> pkt inside{[ 0: 8]};
        pkt_size ==  s -> pkt inside{[ 9:14]};
        pkt_size ==  m -> pkt inside{[15:22]};
        pkt_size ==  l -> pkt inside{[23:27]};
        pkt_size == xl -> pkt inside{[28:31]};
    }

    function void post_randomize();
        $display("pkt_size= %d\t pkt:%d", pkt_size.name, pkt);
    endfunction

endclass


module tb;
    cimp obj;

    initial
    begin
        obj = new();
        repeat (20) #5 obj.randomize();
    end
endmodule
