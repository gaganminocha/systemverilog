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

-Description
    UVM_INFO    - Informative message.
    UVM_WARNING - Indicates a potential problem.
    UVM_ERROR   - Indicates a real problem. Simulation continues subject
                  to the configured message action.
    UVM_FATAL   - Indicates a problem from which simulation cannot
                  recover. Simulation exits via $finish after a #0 delay.    

-Syntax
    Info    - `uvm_info(id, msg, verbosity)
    Warning - `uvm_warning(id, msg)
    Error   - `uvm_error(id, msg)
    Fatal   - `uvm_fatal(id, msg)


-Only info is having verbosity, and its message can be filtered out using verbosity value.



--------------------
Result:
--------------------
# UVM_INFO uvi.sv(12) @ 0: reporter [TB_TOP] This is Informative message
# UVM_WARNING uvi.sv(14) @ 10: reporter [TB_TOP] This is Warning
# UVM_ERROR uvi.sv(16) @ 20: reporter [TB_TOP] This is error
# UVM_FATAL uvi.sv(18) @ 30: reporter [TB_TOP] This is fatal error, stopping simulation
# 
# --- UVM Report Summary ---
# 
# ** Report counts by severity
# UVM_INFO :    3
# UVM_WARNING :    1
# UVM_ERROR :    1
# UVM_FATAL :    1
# ** Report counts by id
# [Questa UVM]     2
# [TB_TOP]     4
# ** Note: $finish    : /home/gminocha/intelFPGA_lite/22.1std/questa_fse/linux_x86_64/../verilog_src/uvm-1.1d/src/base/uvm_report_object.svh(292)
#    Time: 30 ns  Iteration: 0  Instance: /tb

