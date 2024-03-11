// UVM - uvm_object - inbuilt print()
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//

`include "uvm_macros.svh"
import uvm_pkg::*;
 
class transaction extends uvm_object;
    
    //variable
    rand bit [3:0] data;

    //constructor
    function new(string inst = "transaction");
        super.new(inst);
    endfunction
    
    //factory regisry with uvm_field_* to use inbuilt method
    `uvm_object_utils_begin(transaction)
        `uvm_field_int (data, UVM_DEFAULT | UVM_DEC)
    `uvm_object_utils_end

endclass

module tb;
    
    transaction tr;

	initial 
    begin
        tr = new("tr");
        tr.randomize();
        tr.print(uvm_default_tree_printer);
        $stop;
	end

endmodule

