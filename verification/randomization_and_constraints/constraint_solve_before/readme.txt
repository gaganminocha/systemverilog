Constraint Solve Before
    Overcoming bidirectional nature of constraints

--------------------
Problem:
--------------------

rand addr - 1 bit
rand data - 4 bit

constraint one:
    for addr 0: data is 0

constraint two:
    solve probability issue of 'addr' values, using solve .. before ..

randomize 10 times

--------------------
Takeaways:
--------------------
-Constraint solvers solves constraints for all variables NOT in any particular order.
-Example:
    addr 1-bit;
    data 4-bit;
   
    addr == 0 ->  data == 0;

-Here due to bidirectional nature of constraints, 'data' or 'addr', anyone can be assigned first.
-As, there is no weigthed distribution, all possible values have equal probablity to be assigned.
-For addr:
    0 and 1 - 50% each

-For data:
    0 to 15 - 6.67% each

-Due to bidirectional nature, let's say 'data' is assigned first:
    6.67%  probablity ---- data == 0 leads to addr == 0
    92.33% probablity ---- data != 0 leads to addr == 1

-This dependency between 'data' & 'addr' and bidirectional nature leads to imbalance in value distribution of 'addr'.
    6.67%  for addr == 0
    92.33% for addr == 1

-This issue can be resolved by ordering constraints, use:
    solve 'x' before 'y' constraints



--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3

# run -all
# addr: 1	 data: 5
# addr: 1	 data: 5
# addr: 0	 data: 0
# addr: 0	 data: 0
# addr: 1	 data: 0
# addr: 1	 data: 1
# addr: 0	 data: 0
# addr: 0	 data: 0
# addr: 1	 data: 2
# addr: 0	 data: 0
# exit

