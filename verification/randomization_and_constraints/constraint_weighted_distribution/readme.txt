Constraint Weighted Distribution
dist is an operator, it takes a list of values and weights, separated by := or :/ operator.

--------------------
Problem:
--------------------

addr    - 3 bits
pkt     - 3 bits

constraint 1:
    addr:
        0       - 20%
        2       - 50%
        4 to 6  - 10% each

constraint 2:
    pkt:
        1       - 10%
        2 to 4  - 60%
        7       - 30%


randomize 20 times


--------------------
Takeaways:
--------------------
-The values and weights can be constants or variables,
-value can be single or a range
-the default weight of an unspecified value is := 1
-the sum of weights need not be a 100
-The := operator assigns the specified weight to the item, or if the item is a range, specified weight to every value in the range.
-The :/ operator assigns the specified weight to the item, or if the item is a range, specified 'weight/n' to every value in the range. where n is the number of values in the range.





--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3


# Time:                    5	 addr: 4	, pkt: 2
# Time:                   10	 addr: 0	, pkt: 7
# Time:                   15	 addr: 2	, pkt: 7
# Time:                   20	 addr: 0	, pkt: 3
# Time:                   25	 addr: 4	, pkt: 2
# Time:                   30	 addr: 5	, pkt: 4
# Time:                   35	 addr: 2	, pkt: 3
# Time:                   40	 addr: 2	, pkt: 7
# Time:                   45	 addr: 2	, pkt: 1
# Time:                   50	 addr: 2	, pkt: 1
# Time:                   55	 addr: 2	, pkt: 7
# Time:                   60	 addr: 0	, pkt: 7
# Time:                   65	 addr: 2	, pkt: 3
# Time:                   70	 addr: 6	, pkt: 2
# Time:                   75	 addr: 4	, pkt: 3
# Time:                   80	 addr: 2	, pkt: 3
# Time:                   85	 addr: 0	, pkt: 4
# Time:                   90	 addr: 2	, pkt: 7
# Time:                   95	 addr: 0	, pkt: 4
# Time:                  100	 addr: 2	, pkt: 3

