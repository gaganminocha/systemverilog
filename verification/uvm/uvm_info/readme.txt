UVM - uvm_info
	`uvm_info - to diplay informational msg.
       
--------------------
Problem:
--------------------
Display messages on konsole having informational severity.

--------------------
Takeaways:
--------------------
-Add two mandotory compiler directives for UVM:
    `include "uvm_macros.svh"
    import uvm_pkg::*;
    
-Syntax
    Info    - `uvm_info(id, msg, verbosity)

-id:        which class is sending the message.
-msg:       msg to be displayed on konsole.
-verbosity: if verbosity < simulator_verbosity, then msg is displayed, else not diplayed

-Verbosity will be discussed in detail in other example.

