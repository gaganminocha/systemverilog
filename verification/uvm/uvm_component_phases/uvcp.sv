// UVM - uvm_component phase
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

    //Contruction Phases - Region 1 - total 4 phases
    //writing just build_phase. other phases are same, connect, end_of_elaboration & start_of_simulation
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info("comp", "In build_phase", UVM_MEDIUM)
    endfunction

        
    //Simulation phases - Region 2 - covered in run_phase
    //it is a task - and no "super.<>(phase)" is used
    virtual task run_phase(uvm_phase phase);
        `uvm_info("comp", "In run_phase", UVM_MEDIUM)
    endtask
    
    //Cleanup Phases - Region 3 - total 4 phases
    //writing just extract_phase. other phases are same, check, report & final
    virtual function void extract_phase(uvm_phase phase);
        super.extract_phase(phase);
        `uvm_info("comp", "In extract_phase", UVM_MEDIUM)
    endfunction

endclass

module tb;
    
    //comp comp_1;

	initial 
    begin
        run_test("comp");
        //comp_1 = comp::type_id::create("comp_1", null);
        //comp_1.build_phase()
        $stop;
	end

endmodule

