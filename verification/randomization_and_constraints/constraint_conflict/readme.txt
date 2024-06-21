Constraint Conflict

--------------------
Problem:
--------------------

rand addr - 5 bit
rand data - 5 bit

constraints 1:
    addr <= 12
    data == 4

constraints 2:
    addr >= 23


randomize 5 times with inline contraint data == 7.


--------------------
Takeaways:
--------------------
-Both constraints are conflicting, but no compile time run.
-Run time error will occur.
-Here two conflicts: 
    addr has conflict between constraint 1 & 2
    data has conflict between constraint 2 and inline
-constraints don't overrides, they conflict.
-for overriding a constraint, use soft constraint in class, which the overridden by inline constraint. This will be shown in other example.
-otherway of resolving conflict is using if (obj.randomize()), as if randomize succeed, it returns 1, otherwise 0.



--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3


...
...
 Time: 15 ns  Iteration: 0  Process: /tb/#INITIAL#25 File: testbench.sv Line: 31
# testbench.sv(31): randomize() failed due to conflicts between the following constraints:
# 	testbench.sv(10): first { (data == 4); }
# 	testbench.sv(31): (data == 7);
# Where:
# 	data = 5'h07 /* random  */
...
...
