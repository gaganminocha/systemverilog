UVM - uvm_component phases
	
       
--------------------
Problem:
--------------------
Just compile a basic class extended from uvm_component with phases.
Do include factory registry and constructor.

--------------------
Takeaways:
--------------------
-uvm_component
    uvm_phases - tasks in verification are handled by uvm_phases
    uvm_tree - helpful in building verification environment
    raise and drop ojections - to hold simulation in uvm environment.


-uvm_phases 
    lets divide simulation in 3 regions
    it actually has 20 phases

-Region 1 - Pre Simulation - 4 phases
    time consumed = 0ns
    no time consumed, so use functions
    we create objects here
    4 phases - all run sequentially, not concurrent, though takes 0ns
        build - create object of class
        connect - connection of port (TLM)
        end_of_elaboration - analyze the hierarchy
        start_of_simulation - initialize mem or variable to some known value.


-Region 2 - Simulation - 12 phases
    time consumed = Simulation Time
    here time is consumed, so we use tasks
    Applying Stimuli
    Collection of response
    12 phases - inside run phase (actually these 12 subphases are for other methodology compatibility)
        pre reset
        reset
        post reset
        pre configure
        configure
        post configure
        pre main
        main
        post main
        pre shutdown
        shutdown
        post shutdown

        
-Region 3 - Post Simulation - 4 phases
    time consumed = 0ns
    no time consumed, so use functions
    Generate reports
    Coverage goal achieved
    4 phases - all run sequentially, not concurrent, though takes 0ns
        extract
        check
        report
        final

-All these phases are written in uvm_component.svh, and are part of uvm_component class.
-Use the function syntax as explained in file (like build_phase......)
-Whenever function is present then please add 'super.< >(phase) - for region 1 & 3, and not for task in region 2.
-Generally we add 3 phases in verification env: build_phase, connect_phase & run_phase


-run_test("<class_name_having_test_phases>")
    its a method in uvm_root (which extends from uvm_component)
    uvm_top is automatic created object of uvm_root.
    


--------------------
Result:
--------------------






