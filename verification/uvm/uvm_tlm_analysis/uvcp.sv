// UVM - TLM port - analysis
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//


`include "uvm_macros.svh"
import uvm_pkg::*;
 


class transaction extends uvm_sequence_item;
 
    rand bit [3:0] a;
    rand bit [7:0] b;
 
    //constructor
    function new(input string inst = "TRANS");
        super.new(inst);
    endfunction
 
    //field macros for uvm_object inbuilt methods
    `uvm_object_utils_begin(transaction)
        `uvm_field_int(a, UVM_DEFAULT)
        `uvm_field_int(b, UVM_DEFAULT)
    `uvm_object_utils_end
 
endclass
 

class p_cls extends uvm_component;
    
    //Factory Registry
    `uvm_component_utils(p_cls)
  
    transaction t;
 
    uvm_blocking_get_port #(transaction) recv;

    //constructor
    function new(input string inst = "p_cls", uvm_component parent  = null);
        super.new(inst, parent);
    endfunction  
 
    //build_phase
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        t = transaction::type_id::create("t");
        recv  = new("recv", this);  
    endfunction

 
    //run_phase
    virtual task run_phase(uvm_phase phase); 
        phase.raise_objection(this); 
        #5
        recv.get(t);
        `uvm_info("PORT", "DATA RECD FROM Export", UVM_NONE);
        t.print();
        phase.drop_objection(this);
    endtask

endclass
 
 
class exp_cls extends uvm_component;
    
    //factory registry
    `uvm_component_utils(exp_cls)
 
    uvm_blocking_get_imp #(transaction, exp_cls)  send;
  
  	transaction t;
  
    //constructor
    function new(input string inst = "consumer", uvm_component parent = null);
        super.new(inst, parent);
    endfunction
  
    //build_phase
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
      	t = transaction::type_id::create("t");
        send  = new("recv", this);
    endfunction
    
    //run_phase
    virtual task run_phase(uvm_phase phase); 
        phase.raise_objection(this); 
        t.randomize();
        `uvm_info("EXP", "RUN_PHASE randomize: ", UVM_NONE);
        t.print();
        phase.drop_objection(this);
    endtask
 
    //get method override 
    virtual task get(output transaction t);
        `uvm_info("exp_cls", "DATA sending to port_cls", UVM_NONE); 
        t = this.t;
    endtask
 
endclass
 
 
class env extends uvm_env;

    //Factory registry
    `uvm_component_utils(env)
 
    p_cls p;
    exp_cls c;
 
    //constructor
    function new(input string inst = "env", uvm_component parent = null);
        super.new(inst, parent);
    endfunction
    
    //build_phase
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        p = p_cls::type_id::create("p",this);
        c = exp_cls::type_id::create("c", this);
    endfunction
 
    //connect_phase
    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        p.recv.connect(c.send);
    endfunction
 
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





