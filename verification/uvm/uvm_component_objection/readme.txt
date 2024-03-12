UVM - uvm_component phases
	
       
--------------------
Problem:
--------------------
Just compile a basic class extended from uvm_component with simulation time added to run_phase
Do include factory registry and constructor.

--------------------
Takeaways:
--------------------
-Region 2 - Simulation - 12 phases
    time consumed = Simulation Time
    here time is consumed, so we use tasks
    Applying Stimuli
    Collection of response
    12 phases - inside run phase (actually these 12 subphases are for other methodology compatibility)


-run_test("<class_name_having_test_phases>")
    its a method in uvm_root (which extends from uvm_component)
    uvm_top is automatic created object of uvm_root.


-if we add simulation time in run_phase, it will not have it,as by default simulation finishes in 0ns (using run_test) after running all phases in sequence.


-to use the simulation time in run_phase, we need to raise the objection, so that run_test do not go to next phase (extract_phase) in 0ns.

-first we take control of the phase and then raise an objection so that simulation does not end in 0ns

-syntax
    phase.raise_objection(this)
    ...
    ...
    phase.drop_objection(this)
    

--------------------
Result:
--------------------



# UVM_INFO @ 0: reporter [RNTST] Running test comp...
# UVM_INFO uvcpo.sv(24) @ 0: uvm_test_top [comp] In build_phase
# UVM_INFO uvcpo.sv(33) @ 10: uvm_test_top [comp] In run_phase
# UVM_INFO verilog_src/uvm-1.1d/src/base/uvm_objection.svh(1267) @ 10: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
# UVM_INFO uvcpo.sv(41) @ 10: uvm_test_top [comp] In extract_phase
# 






