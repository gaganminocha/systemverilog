// SV - Deep Copy
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//


class abc;
    int a;
    int b;
    
    function abc copy;
        copy = new();
        copy.a = this.a;
        copy.b = this.b;
        return copy;
    endfunction

endclass


class xyz;
    int x;
    int y;

    abc abc1;

    function new ();
        abc1 = new;
    endfunction

    function xyz copy;
        copy = new();
        copy.x = this.x;
        copy.y = this.y;
        copy.abc1 = abc1.copy;
        return copy;
    endfunction


endclass


module tb;
    
    xyz obj1;
    xyz obj2;
        
    initial
    begin
        obj1 = new;
        obj2 = obj1.copy;                        //deep copy
        obj1.abc1.a = 1;    obj1.abc1.b = 2;
        obj2.abc1.a = 3;    obj2.abc1.b = 4;
        obj1.x = 5;         obj1.y = 6;
        obj2.x = 7;         obj2.y = 8;
        $display("obj1.abc1.a =%0d & obj1.abc1.b= %0d", obj1.abc1.a, obj1.abc1.b );
        $display("obj2.abc1.a =%0d & obj2.abc1.b= %0d", obj2.abc1.a, obj2.abc1.b );
        $display("obj1.x =%0d & obj1.y= %0d", obj1.x, obj1.y );
        $display("obj2.x =%0d & obj2.y= %0d", obj2.x, obj2.y );
    end

endmodule
