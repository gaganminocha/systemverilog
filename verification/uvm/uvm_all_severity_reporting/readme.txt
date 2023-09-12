UVM - all reporting severity
	info, warning, error & fatal
       
--------------------
Problem:
--------------------
Print all the severity messages with with interval of 10 units.

--------------------
Takeaways:
--------------------
-Add two mandotory compiler directives for UVM:
    `include "uvm_macros.svh"
    import uvm_pkg::*;
    
-Syntax
    Info    - `uvm_info(id, msg, verbosity)
    Warning - `uvm_warning(id, msg)
    Error   - `uvm_error(id, msg)
    Fatal   - `uvm_fatal(id, msg)


-Only info is having verbosity, and its message can be filtered out using verbosity value.



			



