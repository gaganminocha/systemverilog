// SV - abstract class (virtual)
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//


virtual class abc;
    int a;
    int b;

    function new();
        $display("Inside Parent - abc class - new() - constructor");
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
    endfunction

    virtual function  void exhibit();
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
        //p1 = new();                                       //run-time error

        $display("01 - Constructing child object: ");
        c1 = new();                                         //child object c1 constructed
        $display();

        $display("02 - Displaying object addresses: ");
        $display("addr of parent p1 handle = %0d", p1);     //null - it is not constructed
        $display("addr of child c1 handle = %0d", c1);      //address of child object c1
        $display();

        $display("03 - Displaying Child methods: ");
        c1.exhibit();
        c1.show();
        $display();

        $display("---Extra concept to understand (polymorphism): parent handle points to child---");
        $display("04 - Pointing Parent handle to child, and displaying Parent methods: ");   
        p1 = c1;
        p1.exhibit();                                       //run-time polymorphism. child exhibit() called
        p1.show();                                          //no polymorphism as show() is non-virtual
        $display();

        $display("05 - Addresses after Parent handle pointed to Child: ");
        $display("addr of parent p1 handle = %0d", p1);     //same as c1 address
        $display("addr of child c1 handle = %0d", c1);      //address of child object c1
    end

endmodule
