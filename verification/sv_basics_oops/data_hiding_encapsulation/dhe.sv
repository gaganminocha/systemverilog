// SV -  Data Hiding and Encapsulation
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//

class parent;
    bit [3:0] p_addr;
    local bit [3:0] p_data;
    protected bit [3:0] p_req;

    function new(bit [3:0] p_addr, bit [3:0] p_data, bit [3:0] p_req);
        this.p_addr = p_addr;
        this.p_data = p_data;
        this.p_req = p_req;
    endfunction

    function void display();
        $display("p_addr: %0d, p_data: %0d, p_req: %0d", p_addr, p_data, p_req);
    endfunction
endclass

class child extends parent;
    bit [3:0] c_addr;
    local bit [3:0] c_data;
    protected bit [3:0] c_req;

    function new(bit [3:0] p_addr, bit [3:0] p_data, bit [3:0] p_req, bit [3:0] c_addr, bit [3:0] c_data, bit [3:0] c_req);
        //Parent class constructor call
        super.new(p_addr, p_data, p_req);
       
        //Parent class variable access - OK 
        super.p_addr = 11;
        
        //Parent class 'local' variable access - Compilation Error.
        //super.p_data = 30;

        //Parent class 'protected' variable access -  OK
        super.p_req = 12;

        this.c_addr = c_addr;
        this.c_data = c_data;
        this.c_req = c_req;
    endfunction
    
    function void display();
        $display("----Child----");
        super.display();
        $display("c_addr: %0d, c_data: %0d, c_req: %0d", c_addr, c_data, c_req);
    endfunction
endclass



module tb;
    
    parent p;
    child c;
    child c1;
        
    initial
    begin
        p = new(1,2,3);
        c = new(4,5,6,7,8,9);
        
        p.display();
        c.display();
        
        //Accessing local var - Compilation Error
        //p.p_data = 13;
        //c.c_data = 13;
        //c.p_data = 13;
        
        //Accessing potected var - Compilation Error
        //p.p_req = 13;
        //c.c_req = 13;
        //c.p_req = 13;
        
        $display(); 
        $display("Changing variable");
        //Accessing normal variable - OK
        p.p_addr = 13;
        c.c_addr = 14;
        c.p_addr = 15;
        
                
        p.display();
        c.display();
    end

endmodule
