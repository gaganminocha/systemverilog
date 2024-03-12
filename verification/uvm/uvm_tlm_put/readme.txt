UVM - TLM port
	
       
--------------------
Problem:
--------------------
Just compile a TLM get/put port for data. 

--------------------
Takeaways:
--------------------
-SV has mailbox
-in UVM, we use TLM port to transfer data between:
    -sequencer and driver
    -monitor and scoreboard

-In TLM, data is transfer between two classes, known as Port & Export

-Port initiate the transaction - initiator - square box marking
-export - respond to the request by port - responder - circle marking

-Flows
    control flow - who intiate the data request
    data flow - how data is flowing between port and export. 

- Let A is inititor the request
      B is responding to request

    If data is flowing from A to B, it is PUT
    If data is flowing from B to A, it is GET
    If data is flowing in both direction, it is TRANSPORT


- These operations can be achieved using:
    blocking -      '=' in verilog  - wait for prev transfer to complete
    non-blocking -  '<=' in verilog - does not wait

- dedicate classes for 
    PUT + Blocking
    PUT + Non-Blocking
    GET + Blocking
    GET + Non-Blocking
    TRANSPORT + Blocking
    TRANSPORT + Non-Blocking



- syntax
    uvm_blocking_put_port #(transaction) send;
    send  = new("send", this);          //build_phase
    send.put(t);                        //run_phase
    
- in build_phase create object, using 'new', not 'create'.
    in uvm, only for TLM we use 'new', for all other, we use 'create'

- in consumer class put implementation is defined.
    uvm_blocking_put_imp #(transaction,consumer)  recv;     //2nd param consumer
    recv  = new("recv", this);

- connect_phase
    use to connect tlm ports
    p.send.connect(c.recv);


  


--------------------
Result:
--------------------

# UVM_INFO testbench.sv(56) @ 0: uvm_test_top.e.p [PROD] DATA SENT TO CONSUMER
# ------------------------------
# Name  Type         Size  Value
# ------------------------------
# t     transaction  -     @400 
#   a   integral     4     'h1  
#   b   integral     8     'h86 
# ------------------------------
# UVM_INFO testbench.sv(85) @ 0: uvm_test_top.e.c [CONS] DATA RECV FROM PRODUCER
# ------------------------------
# Name  Type         Size  Value
# ------------------------------
# t     transaction  -     @400 
#   a   integral     4     'h1  
#   b   integral     8     'h86 
# ------------------------------
# UVM_INFO verilog_src/uvm-1.2/src/base/uvm_objection.svh(1270) @ 0: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
# UVM_INFO verilog_src/uvm-1.2/src/base/uvm_report_server.svh(847) @ 0: reporter [UVM/REPORT/SERVER] 
# --- UVM Report Summary ---
# 
# ** Report counts by severity
# UVM_INFO :    7
# UVM_WARNING :    0
# UVM_ERROR :    0
# UVM_FATAL :    0
# ** Report counts by id
# [CONS]     1
# [PROD]     1
# [Questa UVM]     2
# [RNTST]     1
# [TEST_DONE]     1
# [UVM/RELNOTES]     1
# 
# ** Note: $finish    : /usr/share/questa/questasim/linux_x86_64/../verilog_src/uvm-1.2/src/base/uvm_root.svh(517)
#    Time: 0 ns  Iteration: 272  Instance: /tb
# End time: 04:47:46 on Mar 12,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   1
#     vopt: Errors:   0, Warnings:   2
#     vsim: Errors:   0, Warnings:   0
#   Totals: Errors:   0, Warnings:   3
Done


