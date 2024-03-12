// UVM - uvm_component basic tree
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//


`include "uvm_macros.svh"
import uvm_pkg::*;
 
class comp extends uvm_component;
    
    //factory registry
    `uvm_component_utils(comp)

    //constructor
    function new(string inst = "comp", uvm_component parent = null);
        super.new(inst, parent);
    endfunction

    //Phases
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info("comp", "In build_phase", UVM_MEDIUM)
    endfunction

endclass

class test extends uvm_test;
      
    //factory registry
    `uvm_component_utils(test)

    //creating child (intantiating class)
    comp cp;

    //constructor
    function new(string inst = "comp", uvm_component parent = null);
        super.new(inst, parent);
    endfunction

    //Phases
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        cp = comp::type_id::create("cp", this);
        `uvm_info("test", "In build_phase", UVM_MEDIUM)
    endfunction

    virtual function void end_of_elaboration_phase(uvm_phase phase);
        super.end_of_elaboration_phase(phase); 
        `uvm_info("test", "EOE", UVM_MEDIUM)
        uvm_top.print_topology();
    endfunction
    


endclass

module tb;
    
	initial 
    begin
        run_test("test");
        $stop;
	end

endmodule

