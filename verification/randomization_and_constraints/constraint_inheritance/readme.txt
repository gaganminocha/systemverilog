Constraint Inheritance

--------------------
Problem:
--------------------
class 1
    rand addr - 3 bits

    constraint gt:
        addr > 3

class 2 derived from class 1
    constraint lt:
        addr < 6
    Overide constraint gt:
        addr > 1

randomize class 1 - 5 times
randomize class 2 - 8 times



--------------------
Takeaways:
--------------------
-derived class constraint 'gt' overrides the base class 'gt'






