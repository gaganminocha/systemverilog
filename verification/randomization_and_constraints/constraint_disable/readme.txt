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
-Disabling and enabling can be done for whole class, <obj>.constraint_mode(<0_or_1>)
-But you CAN'T print rand_mode of whole class, <obj>.constraint_mode()






--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3


# run -all
# Time =                    0 	, addr =  0 	, pkt =  0 
# Time =                    5 	, addr =  4 	, pkt =  0 
# Time =                   10 	, addr =  6 	, pkt =  0 
# Time =                   15 	, addr = 12 	, pkt =  0 
# Time =                   20 	, addr =  4 	, pkt =  0 
# gt_3 mode: 0
# Time =                   30 	, addr =  7 	, pkt =  0 
# Time =                   35 	, addr =  1 	, pkt =  0 
# Time =                   40 	, addr =  0 	, pkt =  0 
# Time =                   45 	, addr =  3 	, pkt =  0 
# Time =                   50 	, addr =  1 	, pkt =  0 
# Time =                   55 	, addr =  4 	, pkt =  0 
# Time =                   60 	, addr = 12 	, pkt =  0 
# lt_13 mode: 0
# Time =                   65 	, addr =  6 	, pkt =  0 
# Time =                   70 	, addr =  0 	, pkt =  0 
# Time =                   75 	, addr =  9 	, pkt =  0 
# Time =                   80 	, addr = 12 	, pkt =  0 
# Time =                   85 	, addr =  4 	, pkt =  0 
# Time =                   90 	, addr =  3 	, pkt =  0 
# Time =                   95 	, addr =  7 	, pkt =  0 
# Time =                  100 	, addr =  0 	, pkt =  0 
# Time =                  105 	, addr = 11 	, pkt =  0 
# Time =                  110 	, addr = 13 	, pkt =  0 
# Time =                  115 	, addr =  2 	, pkt =  0 
# exit

