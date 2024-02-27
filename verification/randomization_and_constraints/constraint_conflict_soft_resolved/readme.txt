Constraint Conflict - 'soft' resolve

--------------------
Problem:
--------------------

rand data - 5 bit
rand addr - 5 bit

constraints:
    data within 10 to 26 range
    addr equals to 4

    Override 'data' to keep it less than 5
    Override 'addr' to make it equals to 7


randomize 5 times

resolving conflict using soft.

--------------------
Takeaways:
--------------------
-Both constraints are conflicting, simulation error (no compile time error).
-Constraints don't override, they conflict.
-To avoid conflict, one constraint needs to override other.
-This overriding is achieved by de-prioritizing a constraint by using 'soft' keyword.
-In the example second-constraint and inline-constraint will override soft contraint (first) of the class.
-There will be no run time error as well.



--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3


# run -all
# time =  5000 --> data =  4  &  addr =  7 
# time = 10000 --> data =  0  &  addr =  7 
# time = 15000 --> data =  1  &  addr =  7 
# time = 20000 --> data =  2  &  addr =  7 
# time = 25000 --> data =  3  &  addr =  7
