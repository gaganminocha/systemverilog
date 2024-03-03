Constraint Function


--------------------
Problem:
--------------------

pkt     - byte type dynamic array
addr    - rand 4-bit

function:
    to return addr + 10.

constraint pkt_s:
    pkt  array size     < return val of function


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
# time:   5, addr: 14, pkt_size: 24
# sm: 24
# time:  10, addr:  2, pkt_size: 12
# sm: 12
# time:  15, addr:  8, pkt_size: 18
# sm: 18
# time:  20, addr:  0, pkt_size: 10
# sm: 10
# time:  25, addr: 11, pkt_size: 21
# sm: 21
# time:  30, addr:  7, pkt_size: 17
# sm: 17
# time:  35, addr:  1, pkt_size: 11
# sm: 11
# time:  40, addr:  0, pkt_size: 10
# sm: 10
# time:  45, addr:  3, pkt_size: 13
# sm: 13
# time:  50, addr:  1, pkt_size: 11
# sm: 11
# exit

