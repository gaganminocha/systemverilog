// Constraint - solve 'x' before 'y'
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//

`timescale 1ns/100ps

class cb;

    rand bit        addr;
    rand bit [3:0]  data;

    constraint one
    {
        addr == 0 ->  data == 0;
        solve addr before data;
    }
   
    function void post_randomize();
        $display("addr: %d\t data:%d", addr, data );
    endfunction

endclass

module tb;
    cb obj;

    initial
    begin
        obj = new();
        repeat (10) obj.randomize();
    end

endmodule


