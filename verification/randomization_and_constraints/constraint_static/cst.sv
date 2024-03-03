// Constraint - static
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//

`timescale 1ns/100ps

class csd;
   
    rand bit [3:0] addr;

    static constraint eq3
    {
        addr == 3;
    }

    function void post_randomize();
        $display("time: %d, addr: %d", $time, addr);
    endfunction
   
endclass

module tb;

    csd obj1;
    csd obj2;

    initial
    begin
        obj1 = new();
        obj2 = new();

        repeat (5)
        begin
            #5  obj1.randomize();
                obj2.randomize();
        end

        $display("eq3 mode obj1: %d, eq3 mode obj2:", obj1.eq3.constraint_mode(), obj2.eq3.constraint_mode());
        obj2.eq3.constraint_mode(0);
        $display("eq3 mode obj1: %d, eq3 mode obj2:", obj1.eq3.constraint_mode(), obj2.eq3.constraint_mode());

        repeat (5)
        begin
            #5  obj1.randomize();
                obj2.randomize();
        end

    end

endmodule
