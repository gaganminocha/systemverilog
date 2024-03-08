UVM - uvm_info $sformatf
    helps in diplaying variable value in uvm_info.
	
       
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
    
-It is used to display variable on the console.

-Generally three ways to display variable
    $sformatf - single variables
    core methods - multiple variables (discussed later)
    do hooks - mutiple variable (discussed later)

-$sformat v $sformatf
    $sformat  - is system task
                takes two args, 1st arg stores result of 2nd arg
    
    $sformatf - is function
                take one arg
                returns val 
                in uvm_info, works like $display


--------------------
Result:
--------------------


#    Time: 0 ns  Iteration: 0  Process: /tb/#INITIAL#14 File: uiver.sv Line: 15
# UVM_INFO uiver.sv(15) @ 0: reporter [TB_TOP] Value of addr is: 2048
# ** Note: $stop    : uiver.sv(16)
#    Time: 0 ns  Iteration: 0  Instance: /tb
# Break at uiver.sv line 16

