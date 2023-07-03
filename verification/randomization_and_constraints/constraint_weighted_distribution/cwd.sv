`timescale 1ns/1ps

class c_dist;
    rand bit [2:0] addr;    
    rand bit [2:0] pkt;    

    constraint cwd
    {
        addr dist {0 := 2, 2 := 5, [4:6]};
        pkt  dist {1, [2:4] :/ 6, 7 := 3};  
    }

endclass


module tb;
    c_dist obj;

    initial
    begin
        obj = new();

        repeat (20)
        begin
            #5 obj.randomize();
            $display("Time: %d\t addr: %d\t, pkt: %d",$time, obj.addr, obj.pkt);
        end
    end



endmodule
