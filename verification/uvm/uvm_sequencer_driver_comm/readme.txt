UVM - Sequencer Driver communication

       
--------------------
Problem:
--------------------
Sequencer Driver communication

Sequence/transaction - create sequence
Send sequence/transaction to sequencer
when drive request for sequence from sequencer, it is transmitted to driver
Driver send that sequence to interface
Driver also send back acknowledgement to sequencer that tranasaction/sequence is transmitted to interface.
then sequencer send back ackwldgement to sequence.
after squence/transac receive acknowldgement , new sequence is created.


     _______________        _______________        ___________       __________
    |               |      |               |      |           |     |          |
    |  seq/trans    |----> |   sequencer   | ---->|  Driver   |---->| Inerface |
    |_______________|      |_______________|      |___________|     |__________|


 


--------------------
Takeaways:
--------------------
-create a sequence my_seq class extends from uvm_sequence#(transaction)

-task of uvm_sequence class
    body - it starts automatically when obj is created for sequence class and obj.start(<sequencer>) is called.

-macro inside body of uvm_sequence
    `uvm_do(trans) - it creates object of trans + randomize + send data to sequencer

-uvm_sequencer - we are not going to write code of it, just connect driver to sequencer using TLM ports.
    Sequencer is Export TLM port.
    seq_item_export - TLM EXPORT
  
    
-uvm_driver class TLM ports (PORT)
    seq_item_port 

   
-uvm_drier class method
    get_next_item - It send request to sequencer for transaction.
    try_next_item - non-blocking variant of the get_next_item() method.
    item_done()   - means driver-sequencer handshake is done.

-uvm_agent
    a user-defined agent is extended from uvm_agent, which inherited by uvm_component
    An agent typically contains a driver, a sequencer, and a monitor

    Connects PORT (driver class) & Export (sequencer class)

    active agent
        generate stimulus, drive DUT and monitor dat back from DUT
        contain all 3: sequencer, driver & monitor
    
    passive agent
        only monitor - to caputre result from DUT, and doe not driver DUT.

    Method
        get_is_active() - Returns UVM_ACTIVE if the agent is acting as an active agent and UVM_PASSIVE if the agent acting as a passive agent.



  


--------------------
Result:
--------------------

# UVM_INFO verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(277) @ 0: reporter [Questa UVM] QUESTA_UVM-1.2.3
# UVM_INFO verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(278) @ 0: reporter [Questa UVM]  questa_uvm::init(+struct)
# UVM_INFO @ 0: reporter [RNTST] Running test test...
# UVM_INFO testbench.sv(80) @ 0: uvm_test_top.e.p.d [DRV] a:15 & b:15
# UVM_INFO testbench.sv(49) @ 0: uvm_test_top.e.p.seqr@@c [my_seq] a:15 & b:15
# UVM_INFO testbench.sv(80) @ 0: uvm_test_top.e.p.d [DRV] a: 0 & b:15
# UVM_INFO testbench.sv(49) @ 0: uvm_test_top.e.p.seqr@@c [my_seq] a: 0 & b:15
# UVM_INFO testbench.sv(80) @ 0: uvm_test_top.e.p.d [DRV] a:10 & b:12
# UVM_INFO testbench.sv(49) @ 0: uvm_test_top.e.p.seqr@@c [my_seq] a:10 & b:12
# UVM_INFO testbench.sv(80) @ 0: uvm_test_top.e.p.d [DRV] a: 9 & b: 1
# UVM_INFO testbench.sv(49) @ 0: uvm_test_top.e.p.seqr@@c [my_seq] a: 9 & b: 1
# UVM_INFO testbench.sv(80) @ 0: uvm_test_top.e.p.d [DRV] a: 8 & b: 6
# UVM_INFO testbench.sv(49) @ 0: uvm_test_top.e.p.seqr@@c [my_seq] a: 8 & b: 6
# UVM_INFO verilog_src/uvm-1.2/src/base/uvm_objection.svh(1270) @ 0: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
# UVM_INFO verilog_src/uvm-1.2/src/base/uvm_report_server.svh(847) @ 0: reporter [UVM/REPORT/SERVER] 
# --- UVM Report Summary ---
# 
# ** Report counts by severity
# UVM_INFO :   15
# UVM_WARNING :    0
# UVM_ERROR :    0
# UVM_FATAL :    0
# ** Report counts by id
# [DRV]     5
# [Questa UVM]     2
# [RNTST]     1
# [TEST_DONE]     1
# [UVM/RELNOTES]     1
# [my_seq]     5
# 


