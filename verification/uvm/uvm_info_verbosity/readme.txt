UVM - uvm_info verbosity
	`uvm_info - settiing verbosity.
       
--------------------
Problem:
--------------------
Display messages on konsole having informational severity.
change the default verbosity of uvm and again check if message displays.

--------------------
Takeaways:
--------------------
-Add two mandatory compiler directives for UVM:
    `include "uvm_macros.svh"   //includes all the macros for UVM 
    import uvm_pkg::*;          //includes all base classes
    
-In-built functions:
    get_report_verbosity_level() - to access the default verbosity, returns int.
    set_report_verbosity_level(int verbosity_lev) - to set the verbosity level in uvm, requires int argument.
    
-Need to take access to uvm desktop/top to use in-built functions, using object: uvm_top
    uvm_top.get_report_verbosity_level()
    uvm_top.set_report_verbosity_level(int verbosity_level)

-src/base/uvm_object_globals.svh file shows verosity levels, default is UVM_MEDIUM (200)
    UVM_NONE   = 0,
    UVM_LOW    = 100,
    UVM_MEDIUM = 200,
    UVM_HIGH   = 300,
    UVM_FULL   = 400,
    UVM_DEBUG  = 500

-uvm_info(< >, < > , <verbosity>) - to display message on console, 
    verbosity here is to be less than equal to uvm's set verbosity (default is 200, UVM_MEDIUM)

-3rd argument for uvm_info macro, could be a number or any of the above mentioned enum (UVM_NONE...UVM_DEBUG)

-Similarly argument of set_report_verbosity_level(<any_val_or_enum>), can be number or enum.



  
--------------------
Result:
--------------------

# Default Verbosity: 200
# UVM_INFO uiver.sv(18) @ 0: reporter [TB_TOP] This is MEDIUM message
# UVM_INFO uiver.sv(19) @ 0: reporter [TB_TOP] This is MEDIUM with vaue 200
# UVM_INFO uiver.sv(20) @ 0: reporter [TB_TOP] This is MEDIUM with vaue 199
# Default Verbosity: 250
# UVM_INFO uiver.sv(29) @ 10: reporter [TB_TOP] This is MEDIUM message
# UVM_INFO uiver.sv(30) @ 10: reporter [TB_TOP] This is VAL 249
# ** Note: $stop    : uiver.sv(35)
#    Time: 10 ns  Iteration: 0  Instance: /tb
