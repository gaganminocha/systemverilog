// Constraint if-else
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
        if(pkt_size == xs)
           pkt inside{[ 0: 8]};
        else if(pkt_size == s)
            pkt inside{[ 9:14]};
        else if (pkt_size ==  m)
            pkt inside{[15:22]};
        else if (pkt_size ==  l)
            pkt inside{[23:27]};
        else
            pkt inside{[28:31]};
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
