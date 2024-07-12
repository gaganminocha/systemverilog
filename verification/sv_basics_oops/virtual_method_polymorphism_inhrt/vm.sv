// SV - vitual class (abstract), virtual method & polymorphism
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//


class abc;
    int a;
    int b;

    function new();
        $display("Inside Parent - abc class - new() - constructor");
        this.a = 1;
        this.b = 2;
    endfunction

    virtual function  void exhibit();
        $display("Inside Parent - abc class - exhibit() - virtual");
    endfunction

    function void show();
        $display("Inside Parent - abc class - show()");
    endfunction
endclass


class xyz extends abc;
    int x;
    int y;

    function new ();
        //super.new();          //only required when to pass arguments. parent new called by default
        $display("Inside Child - xyz class - new() - constructor");
        super.a = 11;
        super.b = 12;
        this.x = 13;
        this.y = 14;
    endfunction

    function  void exhibit();
        $display("Inside Child - abc class - exhibit() - virtual");
    endfunction

    function void show();
        $display("Inside Child - abc class - show()");
    endfunction

endclass


module tb;
    
    abc p1;
    xyz c1;
        
    initial
    begin
        $display("01 - Constructing parent object: ");
        p1 = new();                                         //parent object p1 constructed
        $display();

        $display("02 - Constructing child object: ");
        c1 = new();                                         //child object c1 constructed
        $display();

        $display("03 - Displaying object addresses: ");
        $display("addr of parent p1 handle = %0d", p1);     //null - it is not constructed
        $display("addr of child c1 handle = %0d", c1);      //address of child object c1
        $display();

        $display("04 - Displaying Parent methods: ");
        p1.exhibit();
        p1.show();
        $display();

        $display("05 - Displaying Child methods: ");
        c1.exhibit();
        c1.show();
        $display();


        $display ("----Pointing Parent obj to Child obj----");
        p1 = c1;

        $display("01 - New Addresses of Parent & Child objects: ");
        $display("addr of parent p1 handle = %0d", p1);     //same as c1 address
        $display("addr of child c1 handle = %0d", c1);      //address of child object c1
        $display();

        $display("02 - Displaying Parent methods: ");   
        p1.exhibit();                                       //run-time polymorphism. child exhibit() called
        p1.show();                                          //no polymorphism as show() is non-virtual
        $display();

        $display("03 - Displaying Parent variable");
        $display("value of a: %0d", p1.a);                  //always show values of child class
        $display("value of b: %0d", p1.b);                  //as p1 = c1, so variables get copied

    end

endmodule
