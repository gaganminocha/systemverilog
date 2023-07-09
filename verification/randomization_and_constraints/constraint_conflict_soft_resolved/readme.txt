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
-Run time error will occur.
-constraints don't overrides, they conflict.
-for overriding a constraint, use soft constraint in class, which the overridden by inline constraint. This will be shown in other example.




