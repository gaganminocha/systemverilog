`timescale 1ns/1ps

class crvd;
    rand bit [3:0] addr;
    bit [5:0] pkt;

    constraint gt_3
    {
        addr > 3;
        //pkt  > 3;       //Run-time error as constraint cannot be implemented to non-rand variable
    }
   
    constraint lt_13
    {
        addr < 13;
    }

endclass


module tb;
    crvd obj;

    initial
    begin
        obj = new();
       
        $monitor("Time = %d \t, addr = %d \t, pkt = %d ", $time, obj.addr, obj.pkt);

        repeat(5) #5 obj.randomize();

        obj.gt_3.constraint_mode(0);
        $display("gt_3 mode: %0b", obj.gt_3.constraint_mode());
       
        repeat(8) #5 obj.randomize();
       
        obj.lt_13.constraint_mode(0);
        $display("gt_3 mode: %0b", obj.lt_13.constraint_mode());

        repeat(10) #5 obj.randomize();
    end

endmodule 


