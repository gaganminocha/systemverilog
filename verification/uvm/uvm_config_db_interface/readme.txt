UVM - uvm_component config_db for interface
	
       
--------------------
Problem:
--------------------
Just compile a basic config_db for get/set data via interface.

--------------------
Takeaways:
--------------------
-interface is set by driver
-interface is get by monitor.

-set & get should match the concatenation for 1st 3 args, in order to get access to same interface
-set is done inside module tb, using config_db to set arguments, so that when any class uses get, it matches 1st 3 args and give access to interface.
-get is done in build_phase using config_db

-get(context, instance_name, key, value)
-set(context, instance_name, key, value)





--------------------
Result:
--------------------

UVM_INFO verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(277) @ 0: reporter [Questa UVM] QUESTA_UVM-1.2.3
# UVM_INFO verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(278) @ 0: reporter [Questa UVM]  questa_uvm::init(+struct)
# UVM_INFO @ 0: reporter [RNTST] Running test drv...
# UVM_INFO uvcp.sv(45) @ 0: uvm_test_top [drv] In build_phase
# UVM_INFO uvcp.sv(53) @ 0: uvm_test_top [drv] In run_phase
# UVM_INFO verilog_src/uvm-1.1d/src/base/uvm_objection.svh(1267) @ 100: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
# UVM_INFO uvcp.sv(68) @ 100: uvm_test_top [comp] In extract_phase
# 
# --- UVM Report Summary ---
# 
# ** Report counts by severity
# UVM_INFO :    7
# UVM_WARNING :    0
# UVM_ERROR :    0
# UVM_FATAL :    0
# ** Report counts by id
# [Questa UVM]     2
# [RNTST]     1
# [TEST_DONE]     1
# [comp]     1
# [drv]     2
# ** Note: $finish    : /home/gminocha/intelFPGA_lite/22.1std/questa_fse/linux_x86_64/../verilog_src/uvm-1.1d/src/base/uvm_root.svh(430)
#    Time: 100 ns  Iteration: 54  Instance: /tb



