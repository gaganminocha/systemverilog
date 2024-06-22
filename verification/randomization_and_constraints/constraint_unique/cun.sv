// Constraint Conflict - 'unique' resolve
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//

`timescale 1ns/100ps

class cu;
    rand bit [2:0] data;
    rand bit [4:0] pkt;
    rand bit [3:0] addr;
    rand bit [5:0] arr[5];
    rand bit [3:0] darr[];

    constraint uni
    {
        unique {data, pkt, addr};
        addr > 3;
        unique {darr} ;
        foreach (darr[i]) darr[i] < 10;
    }

    function void post_randomize();
        $display("Time: %d", $time);
        $display("data: %d\tpkt: %d\taddr: %d", data, pkt, addr );
        foreach (arr[i])    $write("arr: %d \t", arr[i]);
        $display();
        foreach (darr[i])   $write("darr: %d \t", darr[i]);
        $display();
    endfunction
endclass

module tb;
    cu obj;
    initial
    begin
        obj= new();
        obj.darr = new[10];

        repeat (10)
        begin
            #10
            obj.randomize();
        end
    end
endmodule
