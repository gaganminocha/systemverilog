// UVM - Sequencer Driver communication
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//


`include "uvm_macros.svh"
import uvm_pkg::*;
 


class transaction extends uvm_sequence_item;
 
    rand bit [3:0] a;
    rand bit [3:0] b;
    rand bit [4:0] y;
 
    //constructor
    function new(input string inst = "TRANS");
        super.new(inst);
    endfunction
 
    //field macros for uvm_object inbuilt methods
    `uvm_object_utils_begin(transaction)
        `uvm_field_int(a, UVM_DEFAULT)
        `uvm_field_int(b, UVM_DEFAULT)
        `uvm_field_int(y, UVM_DEFAULT)
    `uvm_object_utils_end
 
endclass

class my_seq extends uvm_sequence#(transaction);
    
    //Factory Regirty
    `uvm_object_utils(my_seq)

    transaction tr;

    //constructor
  	function new(input string inst = "my_seq");
        super.new(inst);
    endfunction

    //body task
    virtual task body();
        repeat(5)
        begin
            `uvm_do(tr);
            `uvm_info("my_seq",$sformatf("a:%d & b:%d", tr.a, tr.b),UVM_NONE)
        end
    endtask 

endclass 


class driver extends uvm_driver#(transaction);

    //Factory Registry
    `uvm_component_utils(driver)
    
    transaction t;

    
    //constructor
    function new(input string inst = "driver", uvm_component parent  = null);
        super.new(inst, parent);
    endfunction  

    //build_phase
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        t = transaction::type_id::create("t");
    endfunction

    //run_phase
    virtual task run_phase(uvm_phase phase); 
        forever
        begin
            seq_item_port.get_next_item(t);
            `uvm_info("DRV", $sformatf("a:%d & b:%d", t.a, t.b), UVM_NONE)
            seq_item_port.item_done();
        end
    endtask

endclass


class agent extends uvm_agent;
    
    //Factory Registry
    `uvm_component_utils(agent)
    
    uvm_sequencer#(transaction) seqr;
    driver d;
    

    
    //constructor
    function new(input string inst = "agent", uvm_component parent  = null);
        super.new(inst, parent);
    endfunction  

    //build_phase
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
      d = driver::type_id::create("d", this);
      seqr = uvm_sequencer#(transaction)::type_id::create("seqr", this);
    endfunction


    //connect_phase
    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        d.seq_item_port.connect(seqr.seq_item_export);
    endfunction


endclass


 
class env extends uvm_env;

    //Factory registry
    `uvm_component_utils(env)
 
    agent a;
    my_seq  s1;
 
    //constructor
    function new(input string inst = "env", uvm_component parent = null);
        super.new(inst, parent);
    endfunction
    
    //build_phase
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        a = agent::type_id::create("p",this);
        s1 = my_seq::type_id::create("c", this);
    endfunction
 
    //run_phase
    virtual task run_phase(uvm_phase phase);
      phase.raise_objection(this);
        s1.start(a.seqr);
      phase.drop_objection(this);
    endtask
 
endclass
 
 
class test extends uvm_test;
    
    //Factory Registry
    `uvm_component_utils(test)
 
    env e;
    
    //constructor
    function new(input string inst = "test", uvm_component parent = null);
        super.new(inst, parent);
    endfunction
    
    //build_phase
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        e = env::type_id::create("e",this);
    endfunction

endclass
 
 
module tb;
 
    initial begin
        run_test("test");
    end

endmodule


