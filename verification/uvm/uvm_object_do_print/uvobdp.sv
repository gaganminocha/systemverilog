// UVM - uvm_object - do print()
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//

`include "uvm_macros.svh"
import uvm_pkg::*;
 
class transaction extends uvm_object;
    
    //factory regisry with uvm_field_* to use inbuilt method
    `uvm_object_utils(transaction)
    
    //random variable
    rand bit [3:0] data;

    //constructor
    function new(string inst = "transaction");
        super.new(inst);
    endfunction

    //do_* method definition 
    virtual function void do_print (uvm_printer printer);
        super.do_print(printer);
        printer.print_field_int( "data", data, $bits(data), UVM_DEC);
    endfunction 
    

endclass

module tb;
    
    transaction tr;

	initial 
    begin
        tr = new("tr");
        tr.randomize();
        tr.print();
        $stop;
	end

endmodule

