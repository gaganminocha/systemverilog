`timescale 1ns/100ps

class cb;

    rand bit [1:0] addr;
    rand bit data;

    constraint one
    {
        if (addr == 0 || addr == 1)
            data == 0;
        else
            data == 1;
    }
   
    constraint two
    {
        soft data == 1;
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
        repeat (5) obj.randomize();// with {data == 0;};
        repeat (5) obj.randomize() with {addr == 1;};
    end

endmodule


