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




