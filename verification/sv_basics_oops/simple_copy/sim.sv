// SV - Simle Copy
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//


class abc;
    int a;
    int b;
endclass


class xyz;
    int x;
    int y;

    abc abc1;

    function new ();
        abc1 = new;
    endfunction
endclass


module tb;
    
    xyz obj1;
    xyz obj2;
        
    initial
    begin
        obj1 = new;
        obj2 = obj1;                        //simple copy
        obj1.abc1.a = 1;    obj1.abc1.b = 2;
        obj2.abc1.a = 3;    obj2.abc1.b = 4;
        obj1.x = 5;         obj1.y = 6;
        obj2.y = 7;         obj2.y = 8;
        $display("obj1.abc1.a =%0d & obj1.abc1.b= %0d", obj1.abc1.a, obj1.abc1.b );
        $display("obj2.abc1.a =%0d & obj2.abc1.b= %0d", obj2.abc1.a, obj2.abc1.b );
        $display("obj1.x =%0d & obj1.y= %0d", obj1, obj1.y );
        $display("obj2.x =%0d & obj2.y= %0d", obj2.x, obj2 );
    end

endmodule
