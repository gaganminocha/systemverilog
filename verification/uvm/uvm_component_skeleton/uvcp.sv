// UVM - uvm_component skeleton
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//


`include "uvm_macros.svh"
import uvm_pkg::*;
 
class comp extends uvm_component;
`uvm_component_utils(comp)

function new(string inst = "comp", uvm_component parent = null);
    super.new(inst, parent);
endfunction

endclass

module tb;
    
    comp comp_1;

	initial 
    begin
        comp_1 = new("comp_1", null);
        $stop;
	end

endmodule

