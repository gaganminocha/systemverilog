Constraint Conflict soft resolved

--------------------
Problem:
--------------------

rand data - 5 bit

constraints:
    data == 4


randomize 5 times using inline contraint data == 7.
resolving conflict using soft

--------------------
Takeaways:
--------------------
-Both constraints are conflicting, but no compile time run.
-constraints don't overrides, they conflict.
-for overriding a constraint, use soft constraint in class.
-inline constraint will override soft contraint of the class.
-There will be no run time error as well.



--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3


# time =                 5000	 data =  7 
# time =                10000	 data =  7 
# time =                15000	 data =  7 
# time =                20000	 data =  7 
# time =                25000	 data =  7

