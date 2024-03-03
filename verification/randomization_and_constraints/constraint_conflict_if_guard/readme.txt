Constraint Conflict if guard

--------------------
Problem:
--------------------

rand addr - 5 bit

constraints 1:
    addr <= 12

constraints 2:
    addr >= 23


randomize 5 times, take care of conflicts.


--------------------
Takeaways:
--------------------
-Both constraints are conflicting, but no compile time run.
-Run time error will occur.
-constraints don't overrides, they conflict.
-Handling conflict: use if (obj.randomize()), as if randomize succeed, it returns 1, otherwise 0.



--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3


#    Time: 5 ns  Iteration: 0  Process: /tb/#INITIAL#28 File: testbench.sv Line: 35
# ** Error: Error Randomization
#    Time: 5 ns  Scope: tb File: testbench.sv Line: 36
# testbench.sv(35): randomize() failed due to conflicts between the following constraints:
# 	testbench.sv(15): first { (addr <= 12); }
# 	testbench.sv(20): second { (addr >= 23); }
# Given:
# 	bit [4:0] addr
# ** Note: (vsim-7130) Enabling enhanced debug (-solvefaildebug=2) may generate a more descriptive constraint contradiction report and -solvefaildebug testcase.
# ** Note: (vsim-7106) Use vsim option '-solvefailtestcase[=filename]' to generate a simplified testcase that will reproduce the failure.
# ** Warning: (vsim-7084) No solutions exist which satisfy the specified constraints; randomize() failed.

