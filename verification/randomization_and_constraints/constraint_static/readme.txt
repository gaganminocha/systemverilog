Static Constraint

--------------------
Problem:
--------------------

rand addr       - 4 bits

static constraint eq3:
    addr = 3


2 objects: obj1 , obj2

randomize 5 times

print constraint mode for both objects.
disable constraint eq3 for both objects using one object handle
print constraint mode for both objects.

randomize 5 times




--------------------
Takeaways:
--------------------
-Works like static class, one object can control static constraints for other objects.
-This controlling works only for constraint_mode() method


--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3


# run -all
# time:  5, addr:  3
# time:  5, addr:  3
# time: 10, addr:  3
# time: 10, addr:  3
# time: 15, addr:  3
# time: 15, addr:  3
# time: 20, addr:  3
# time: 20, addr:  3
# time: 25, addr:  3
# time: 25, addr:  3
# eq3 mode obj1: 1, eq3 mode obj2: 1
# eq3 mode obj1: 0, eq3 mode obj2: 0
# time: 30, addr:  7
# time: 30, addr:  8
# time: 35, addr:  1
# time: 35, addr:  0
# time: 40, addr:  0
# time: 40, addr:  5
# time: 45, addr:  3
# time: 45, addr: 12
# time: 50, addr:  1
# time: 50, addr: 14
# exit
