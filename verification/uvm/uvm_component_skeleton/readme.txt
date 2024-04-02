UVM - uvm_component skeleton
	
       
--------------------
Problem:
--------------------
Just compile a basic class extended from uvm_component.
Do include factory registry and constructor.

--------------------
Takeaways:
--------------------
-Add two mandatory compiler directives for UVM:
    `include "uvm_macros.svh"   //includes all the macros for UVM 
    import uvm_pkg::*;          //includes all base classes


-uvm_factory
    register all classes to uvm_factory.
    Syntax:      
    `uvm_component_utils(comp)        //comp is the name of the class extended from uvm_component

-Constructor
    1 argument in extended class constructor
        function new (input string inst = "comp", uvm_component parent = null);
            super.new(inst, parent);
        endfunction

-uvm_component
    use to build static components (like driver, monitor class) - which does not change with every simulation iteration.

-constructing object of class is done by 'create' method (which will be discussed later), here 'new' is being used.



--------------------
Result:
--------------------

# UVM_INFO verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(277) @ 0: reporter [Questa UVM] QUESTA_UVM-1.2.3
# UVM_INFO verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(278) @ 0: reporter [Questa UVM]  questa_uvm::init(+struct)
# ** Note: $stop    : uvcp.sv(26)
#    Time: 0 ns  Iteration: 0  Instance: /tb
# Break at uvcp.sv line 26
