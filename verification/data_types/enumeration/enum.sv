`timescale 1ns/100ps

module tb;
    enum {red, green, white} colors;
   
    typedef enum {xs=5, s, m, l=3, xl} size;
   
    size pkt = s;

    initial
    begin
        $display("For enum colors");
        $display(colors.num);
        $display(colors);
        $display(colors.name);
        $display(colors.next);
        $display(colors.next.name);
        $display(colors.next(2));
        $display(colors.next(2).name);
        $display(colors.prev);
        $display(colors.prev(2));
        $display(colors.first);
        $display(colors.last);
        $display(colors.last.name);


        $display("For enum type variable pkt assigned 's', which is 6");
        $display(pkt.num);
        $display(pkt);
        $display(pkt.name);
        $display(pkt.next);
        $display(pkt.next.name);
        $display(pkt.next(2));
        $display(pkt.next(2).name);
        $display(pkt.prev);
        $display(pkt.prev(2));
        $display(pkt.first);
        $display(pkt.last);
        $display(pkt.last.name);

    end


endmodule
