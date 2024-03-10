// UVM - uvm_object skeleton
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//


`include "uvm_macros.svh"
import uvm_pkg::*;
 
class obj extends uvm_object;
`uvm_object_utils(obj)

function new(string inst = "obj");
    super.new(inst);
endfunction

endclass

module tb;
    
    obj obj_1;

	initial 
    begin
        obj_1 = new("obj_1");
        $stop;
	end

endmodule

