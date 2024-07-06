UVM - TLM port - analysis 
	
       
--------------------
Problem:
--------------------
Just compile a TLM analysis port.
 


--------------------
Takeaways:
--------------------
-used when we need to broadcast data to multiple ports

-default get/put are one-to-one communication.

-analysis port - default behavior is one to many

-also in put/get, we have blocking ports, which ensure data is transmitted.
-but in analysis port, data is transmitted without blocking and it isn't ensured.

-so in implementation definition in EXPORT we have a function 'write' instead of task (for get/put)


-PORT class
    uvm_analysis_port#(transaction) send;
    send = new(inst, parent)                //build_phase
    send.write(trans)                       //run_phase

-EXPORT classes - here multiple classes are called susbcriber
    uvm_analysis_imp(transaction, class_of_write_func) recv;
    recv = new(inst, parent)                //build_phase
    virtual function void write(input data);
        ...
        ...
    endfunction


Env class - connect
    instances for port class
    instances for multiple export class
    create the objects inside build_phase
    connect in connect_phase:
        p.send.connect(c1.recv)
        p.send.connect(c2.recv)
        p.send.connect(c3.recv)

    
    

--------------------
Result:
--------------------



