UVM - create()
	
       
--------------------
Problem:
--------------------
Just compile a basic class extended from uvm_object.
Do include factory registry and constructor.
Use inbuild print() to display rand values of 4 bit 'data' 

--------------------
Takeaways:
--------------------
-why use create() and not new() in uvm object creation.
    with new(), uvm factory won't able to override the class.

-syntax:
    <class_name>::type_id::create(args...)
    1 arg for class extended from uvm_object
    2 args for class extended from uvm_component



--------------------
Result:
--------------------
field macro radix - Default hexadecimal
print format - Default table


# --------------------------------
# Name    Type         Size  Value
# --------------------------------
# tr      transaction  -     @355 
#   data  integral     4     12   
# --------------------------------
# ** Note: $stop    : testbench.sv(35)
#    Time: 0 ns  Iteration: 0  Instance: /tb
# Break in Module tb at testbench.sv line 35
# exit



