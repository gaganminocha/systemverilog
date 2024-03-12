// UVM - uvm_component config_db for interface
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//


`include "uvm_macros.svh"
import uvm_pkg::*;
 
//Interface
interface intf;
    logic [3:0] a;
    logic [3:0] b;
    logic [4:0] y;
endinterface

//DUT
module adder(
  input [3:0] a,b,
  output [4:0] y
);
  
  assign y = a + b;
  
endmodule
 

class drv extends uvm_driver;
    
    //factory registry
    `uvm_component_utils(drv)

    //vitrual interface
    virtual intf intf_inst;


    //constructor
    function new(string inst = "drv", uvm_component parent = null);
        super.new(inst, parent);
    endfunction

    //Contruction Phases - Region 1 - total 4 phases
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info("drv", "In build_phase", UVM_MEDIUM)
        uvm_config_db#(virtual intf)::get(this,"","aif",intf_inst);       //drv.aif
    endfunction

        
    //Simulation phases - Region 2 - covered in run_phase
    //it is a task - and no "super.<>(phase)" is used
    virtual task run_phase(uvm_phase phase);
        `uvm_info("drv", "In run_phase", UVM_MEDIUM)
        phase.raise_objection(this);
        for(int i = 0; i< 10; i++)
        begin
            intf_inst.a <= $urandom;
            intf_inst.b <= $urandom;
            #10;
        end
        phase.drop_objection(this);
    endtask
    
    //Cleanup Phases - Region 3 - total 4 phases
    //writing just extract_phase. other phases are same, check, report & final
    virtual function void extract_phase(uvm_phase phase);
        super.extract_phase(phase);
        `uvm_info("comp", "In extract_phase", UVM_MEDIUM)
    endfunction

endclass

module tb;
    
  intf intf_inst();
  adder dut (.a(intf_inst.a), .b(intf_inst.b), .y(intf_inst.y));
  
    initial 
    begin
        uvm_config_db #(virtual intf)::set(null, "uvm_test_top", "aif", intf_inst);//uvm_test_top.aif
 
        run_test("drv"); 
    end

endmodule

