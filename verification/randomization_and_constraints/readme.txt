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


