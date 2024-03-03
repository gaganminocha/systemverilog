// Constraint Inheritence
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//

`timescale 1ns/1ps

class crv1;

    rand bit [2:0] addr;

    constraint gt {addr > 3;}

endclass


class crv2 extends crv1;

    constraint lt {addr < 6;}

    constraint gt {addr > 1;}   // gt constraint is being overridden here.

endclass


module tb;
    crv1 obj1;
    crv2 obj2;

    initial
    begin
        obj1 = new();
        obj2 = new();
       
        //$monitor("time = %t\t cls_1 = %d \t cls_2 = %d ",$time, obj1.addr, obj2.addr);
       
        $display("--------------------------");
        repeat (5)
        begin
            #5 obj1.randomize();
            $display("time = %t\t cls_1 = %d \t cls_2 = %d ",$time, obj1.addr, obj2.addr);
        end
        $display("--------------------------");
        repeat (8)
        begin
            #5 obj2.randomize();
            $display("time = %t\t cls_1 = %d \t cls_2 = %d ",$time, obj1.addr, obj2.addr);
        end
        $display("--------------------------");

    end

endmodule
