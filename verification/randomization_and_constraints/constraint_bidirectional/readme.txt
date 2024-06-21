Constraint Bidirectional
    no order in resolving constraints

--------------------
Problem:
--------------------

rand addr - 2 bit
rand data - 1 bit


constraint one:
    for addr 0 or 1: data is 0
    else data is 1

constraint two:
    addr == 2

randomize 5 times using inline contraint addr == 1.
resolving conflict using soft

--------------------
Takeaways:
--------------------
-Constraint solvers solves constraints for all variables NOT in any particular order.
-Example:
    if (addr == 0)
        data == 1;
    else
        data == 0;
-Here not only 'data' depends on 'addr', but also 'addr' depends on 'data'.
-Constraint Solver can assign value to 'data' before 'addr'.
-Lets say 'data' is assigned '1', then 'addr' will be assigned '0' in order to satisfy the above condition.

-Conflict example (same above constraint with one addition constraint):
    1st Constraint:
        if (addr == 0)
            data == 1;
        else
            data == 0;
   
    2nd Constraint:
        data == 1;

    Inline Constraint:
        addr == 1;

-Solver may resolve 2nd constraint first and assign 'data' = 1, which lead to 'addr' == 0.
-But inline constraint say addr == 1.
-Both constraints are conflicting, but no compile time run.
-Run time error will occur.
-constraints don't overrides, they conflict.
-for ordering constraints, use:
    solve 'x' before 'y' constraints
-This will be shown in other example.




--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3


run -all
# addr: 3	 data:1
# addr: 3	 data:1
# addr: 3	 data:1
# addr: 2	 data:1
# addr: 3	 data:1
# addr: 1	 data:0
# addr: 1	 data:0
# addr: 1	 data:0
# addr: 1	 data:0
# addr: 1	 data:0



