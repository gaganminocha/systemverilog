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
-constraints don't overrides, they conflict.
-for overriding a constraint, use soft constraint in class, which the overridden by inline constraint. This will be shown in other example.
-otherway of resolving conflict is using if (obj.randomize()), as if randomize succeed, it returns 1, otherwise 0.



--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3



