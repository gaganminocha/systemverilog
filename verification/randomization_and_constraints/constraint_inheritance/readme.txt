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



--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3


# run -all
# --------------------------
# time =  5000	 cls_1 = 7 	 cls_2 = 0 
# time = 10000	 cls_1 = 5 	 cls_2 = 0 
# time = 15000	 cls_1 = 5 	 cls_2 = 0 
# time = 20000	 cls_1 = 5 	 cls_2 = 0 
# time = 25000	 cls_1 = 7 	 cls_2 = 0 
# --------------------------
# time = 30000	 cls_1 = 7 	 cls_2 = 3 
# time = 35000	 cls_1 = 7 	 cls_2 = 3 
# time = 40000	 cls_1 = 7 	 cls_2 = 2 
# time = 45000	 cls_1 = 7 	 cls_2 = 5 
# time = 50000	 cls_1 = 7 	 cls_2 = 2 
# time = 55000	 cls_1 = 7 	 cls_2 = 2 
# time = 60000	 cls_1 = 7 	 cls_2 = 5 
# time = 65000	 cls_1 = 7 	 cls_2 = 4 
# --------------------------
# exit




