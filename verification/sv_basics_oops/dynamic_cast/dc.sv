// SV - Dynamic Cast
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//

class parent;
    bit [3:0] addr;

    function void display();
        $display("addr: %0d", addr);
    endfunction
endclass

class child extends parent;
    bit [7:0] data;

    function void display();
        $display("----Child----");
        super.display();
        $display("data: %0d", data);
    endfunction
endclass



module tb;
    
    parent p;
    child c;
    child c1;
        
    initial
    begin
        p = new();
        c = new();
        c1 = new();
        p.addr = 10;
        c.addr = 15;
        c.data = 21;
        $display("p obj: %0d", p);
        $display("c obj: %0d", c);
        p.display();
        c.display();
        $display("Assignment");
        p = c;
        //$display("parent data: %0d", p.data);
        $display("p obj: %0d", p);
        $display("c obj: %0d", c);
        p.display();
        c.display();
        //c1 = p;
        $display("c1 obj: %0d", c1);
        $display("Dynamic Typecasting, c1 = p");
        $cast(c1,p);
        $display("c1 obj: %0d", c1);
        $display("p obj: %0d", p);
        $display("c obj: %0d", c);
        p.display();
        c.display();
        $display("c1 display");
        c.display();
    end

endmodule
