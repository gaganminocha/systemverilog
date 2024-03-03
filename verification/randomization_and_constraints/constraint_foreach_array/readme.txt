Constraint foreach array - iterative


--------------------
Problem:
--------------------

pkt     - byte type dynamic array
addr    - byte type dynamic array


constraint 1_size:
    pkt  array size     < 5
    addr array size     = pkt size

constraint 2_value:
    pkt  array values - 4,6,8,9,11 to 14, 20, 28
    addr array values - 3 * index of array


randomize 10 times


--------------------
Takeaways:
--------------------
-foreach loop syntax
    foreach ( variable[iterator] )  <task to be done>

-for printing array: use $display inside foreach.



--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3

# run -all
# time:                   5 size_pkt:          0 size_addr:          0
# pkt='{} addr='{}
# time:                  10 size_pkt:          4 size_addr:          4
# pkt='{11, 28, 11, 9} addr='{0, 3, 6, 9}
# time:                  15 size_pkt:          1 size_addr:          1
# pkt='{20} addr='{0}
# time:                  20 size_pkt:          1 size_addr:          1
# pkt='{12} addr='{0}
# time:                  25 size_pkt:          4 size_addr:          4
# pkt='{11, 12, 12, 11} addr='{0, 3, 6, 9}
# time:                  30 size_pkt:          0 size_addr:          0
# pkt='{} addr='{}
# time:                  35 size_pkt:          3 size_addr:          3
# pkt='{6, 20, 20} addr='{0, 3, 6}
# time:                  40 size_pkt:          0 size_addr:          0
# pkt='{} addr='{}
# time:                  45 size_pkt:          3 size_addr:          3
# pkt='{8, 14, 6} addr='{0, 3, 6}
# time:                  50 size_pkt:          1 size_addr:          1
# pkt='{20} addr='{0}
# exit



