UVM - uvm_info
	`uvm_info - to diplay informational msg.
       
--------------------
Problem:
--------------------
Display messages on konsole having informational severity.

--------------------
Takeaways:
--------------------
-Add two mandatory compiler directives for UVM:
    `include "uvm_macros.svh"   //includes all the macros for UVM 
    import uvm_pkg::*;          //includes all base classes
    
-Syntax
    Info    - `uvm_info(id, msg, verbosity)

-id:        helps in differentiating which class is sending the message.
-msg:       msg to be displayed on konsole.
-verbosity: if verbosity < simulator_verbosity, then msg is displayed, else not diplayed

-Verbosity will be discussed in detail in other example.


--------------------
Result:
--------------------

 ----------------------------------------------------------------
# UVM-1.1d
# (C) 2007-2013 Mentor Graphics Corporation
# (C) 2007-2013 Cadence Design Systems, Inc.
# (C) 2006-2013 Synopsys, Inc.
# (C) 2011-2013 Cypress Semiconductor Corp.
# ----------------------------------------------------------------
# 
#   ***********       IMPORTANT RELEASE NOTES         ************
# 
#   You are using a version of the UVM library that has been compiled
#   with `UVM_NO_DEPRECATED undefined.
#   See http://www.eda.org/svdb/view.php?id=3313 for more details.
# 
#   You are using a version of the UVM library that has been compiled
#   with `UVM_OBJECT_MUST_HAVE_CONSTRUCTOR undefined.
#   See http://www.eda.org/svdb/view.php?id=3770 for more details.
# 
#       (Specify +UVM_NO_RELNOTES to turn off this notice)
# 
# UVM_INFO verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(277) @ 0: reporter [Questa UVM] QUESTA_UVM-1.2.3
# UVM_INFO verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(278) @ 0: reporter [Questa UVM]  questa_uvm::init(+struct)
# UVM_INFO uvi.sv(13) @ 0: reporter [TB_TOP] This is Informative message
# ** Note: $stop    : uvi.sv(14)
#    Time: 0 ns  Iteration: 0  Instance: /tb
# Break at uvi.sv line 14
