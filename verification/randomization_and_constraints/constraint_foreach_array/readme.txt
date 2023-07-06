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





