UVM - uvm_object skeleton
	
       
--------------------
Problem:
--------------------
Just compile a basic class extended from uvm_object.
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
    `uvm_object_utils(obj)        //obj is the name of the class extended from uvm_object

-Constructor
    1 argument in extended class constructor
        function new (input string inst = "obj");
            super.new(inst);
        endfucntion

-uvm_object
    use to build dynamic component (like transaction class) - which changes with every simulation iteration

-constructing object of class is done by 'create' method (which will be discussed later), here 'new' is being used.



--------------------
Result:
--------------------

# 
# UVM_INFO verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(277) @ 0: reporter [Questa UVM] QUESTA_UVM-1.2.3
# UVM_INFO verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(278) @ 0: reporter [Questa UVM]  questa_uvm::init(+struct)
# ** Note: $stop    : uvob.sv(26)
#    Time: 0 ns  Iteration: 0  Instance: /tb
# Break at uvob.sv line 26

