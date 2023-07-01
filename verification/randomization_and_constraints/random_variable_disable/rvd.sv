`timescale 1ns/1ps

class packet;
    rand  bit [3:0] pkt;
    randc bit [3:0] pktc;
endclass

module tb;

    packet obj;

    initial
    begin
        obj = new();
       
        $monitor("Time: %t \t Value pkt = %d \t Value pktc = %d",$time,  obj.pkt, obj.pktc);

        repeat (6) #5 obj.randomize;
       
        $display("Mode: %0b", obj.pkt.rand_mode());     //Displaying value of rand_mode.
        obj.pkt.rand_mode(0);                           //Disabling randomizing of pkt.
        $display("Mode: %0b", obj.pkt.rand_mode());

        repeat (5) #5 obj.randomize;                    //Here only pktc is randomized.

        $display("Mode: %0b", obj.pktc.rand_mode());    
        obj.pktc.rand_mode(0);                          //Disabling randomizing of pktc.
        $display("Mode: %0b", obj.pktc.rand_mode());

        repeat (5) #5 obj.randomize;                    //Here both pkt and pktc are not randomized.

        obj.rand_mode(1);                               //All class variables enabled.
        $display("Mode: %0b", obj.pktc.rand_mode());

        repeat (6) #5 obj.randomize;

    end
endmodule
