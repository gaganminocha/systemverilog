Constraint Disable

--------------------
Problem:
--------------------

rand addr       - 4 bits
non-rand pkt    - 6 bits

constraint gt_3:
    addr > 3

constraint lt_13
    addr < 13

randomize 5 times

disable constraint gt_3

randomize 8 times

disable constraint lt_13

randomize 10 times


--------------------
Takeaways:
--------------------
-Run-time error on having constraint on non-rand variable.



