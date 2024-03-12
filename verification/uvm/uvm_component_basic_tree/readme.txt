UVM - uvm_component basic tree
	
       
--------------------
Problem:
--------------------
Just compile a basic uvm tree for uvm_components
Do include factory registry and constructor.

uvm_root  (part of uvm)
    |
    |
    v
uvm_test    (user created)
    |
    |
    v
  comp      (user created)

--------------------
Takeaways:
--------------------

-create the child comp (extended from uvm_component)

-uvm_test 
    it is virtual class in uvm which is extended from uvm_omponent


-create test extendted from uvm_test
    instantiate the child 'comp' in this class
    object creation of comp is done in buld_phase, and mentioning 'this' as parent class.
    EOE phase is written to print the topology using uvm_top instance, as object creation is done in build_phase, here we see topology

-here parent-child terminology is not used in respect of inheritence, but for class instantiation to create verification environment.



-when we call run_test("test") in tb, then it automatically creates uvm_root instance uvm_top, and make "test" class as chiled of uvm_root.

--------------------
Result:
--------------------

# UVM_INFO uvcp.sv(45) @ 0: uvm_test_top [test] In build_phase
# UVM_INFO uvcp.sv(23) @ 0: uvm_test_top.cp [comp] In build_phase
# UVM_INFO uvcp.sv(50) @ 0: uvm_test_top [test] EOE
# UVM_INFO @ 0: reporter [UVMTOP] UVM testbench topology:
# -------------------------------
# Name          Type  Size  Value
# -------------------------------
# uvm_test_top  test  -     @466 
#   cp          comp  -     @473 
# -------------------------------



