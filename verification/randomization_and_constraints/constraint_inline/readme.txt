Constraint Inline

--------------------
Problem:
--------------------

addr - 5 bit

constraint in class:
    addr = 1, 2, 4 to 6, 10 to 28
    addr 10 to 28
    addr <= 26

constraints inline:
    addr - 20 to 24


randomize 10 times

--------------------
Takeaways:
--------------------
-Use the keyword 'with' at time of randomization.

-During randomization, constraint solver will consider both inline constraints and constraints written inside the class

-the inline constraint will not override the constraints written inside the class

-the inline constraint shouldn't conflict with the constraint written inside the class, else it will lead to randomization failure
    for example, constraint inside the class written as var < 5, and inline constraint written as var > 5
     
-Finally, all contraints are applied and random values are generated.



--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3


# time:                    0, addr:  0
# time:                 5000, addr: 21
# time:                15000, addr: 22
# time:                20000, addr: 21
# time:                25000, addr: 24
# time:                30000, addr: 22
# time:                35000, addr: 21
# time:                40000, addr: 24
# time:                45000, addr: 20
# time:                50000, addr: 21

