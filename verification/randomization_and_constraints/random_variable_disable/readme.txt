Random Variable Disable
rand_mode()

--------------------
Problem:
--------------------

rand  pkt   - 4 bits
randc pktc  - 4 bits

randomize 6 times

print pkt rand-mode
disable pkt randomize
print pkt rand-mode

randomize 5 times

print pktc rand-mode
disable pktc randomize
print pktc rand-mode

randomize 5 times

Enable all-class randomize
print pktc rand-mode

randomize 6 times

--------------------
Takeaways:
--------------------
-Printing of mode can be done using  <obj>.<var>.rand_mode()
-Disabling and enabling can be done for whole class, <obj>.rand_mode(<0_or_1>)
-But you CAN'T print rand_mode of whole class, <obj>.rand_mode()




--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3


# Time:                    0 	 Value pkt =  0 	 Value pktc =  0
# Time:                 5000 	 Value pkt =  8 	 Value pktc =  0
# Time:                10000 	 Value pkt =  8 	 Value pktc = 12
# Time:                15000 	 Value pkt = 12 	 Value pktc =  8
# Time:                20000 	 Value pkt =  9 	 Value pktc =  5
# Time:                25000 	 Value pkt =  6 	 Value pktc =  1
# Mode: 1
# Mode: 0
# Time:                30000 	 Value pkt =  5 	 Value pktc = 13
# Time:                35000 	 Value pkt =  5 	 Value pktc =  9
# Time:                40000 	 Value pkt =  5 	 Value pktc =  6
# Time:                45000 	 Value pkt =  5 	 Value pktc =  2
# Time:                50000 	 Value pkt =  5 	 Value pktc = 14
# Mode: 1
# Mode: 0
# Time:                55000 	 Value pkt =  5 	 Value pktc = 10
# Mode: 1
# Time:                85000 	 Value pkt =  1 	 Value pktc =  7
# Time:                90000 	 Value pkt =  4 	 Value pktc =  3
# Time:                95000 	 Value pkt =  5 	 Value pktc = 15
# Time:               100000 	 Value pkt =  2 	 Value pktc = 11
# Time:               105000 	 Value pkt = 11 	 Value pktc =  4
# Time:               110000 	 Value pkt = 10 	 Value pktc =  0
