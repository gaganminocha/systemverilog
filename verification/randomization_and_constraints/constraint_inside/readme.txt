Constraint Inside

--------------------
Problem:
--------------------

addr    - 5 bits
pkt     - 3 bits

constraint 1:
    addr - 0, 1, 4 to 6, 8 to 11, 13, 14, 16, 18 to 23, 27 to 30.


constraint 2:
    pkt - except (0, 2, 4 to 6)


randomize 20 times



--------------------
Takeaways:
--------------------
-range can be written within 'inside', using [start:end]
-also variable can be written within 'inside',eg., "inside {0, 1, [start:end]};"
-inverted inside is used as, !(var inside{....})


--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3



# run -all
# Time:    5	 addr: 29	 pkt: 1
# Time:   10	 addr: 10	 pkt: 3
# Time:   15	 addr: 11	 pkt: 3
# Time:   20	 addr:  5	 pkt: 1
# Time:   25	 addr:  9	 pkt: 7
# Time:   30	 addr: 11	 pkt: 3
# Time:   35	 addr: 18	 pkt: 3
# Time:   40	 addr: 10	 pkt: 3
# Time:   45	 addr: 18	 pkt: 1
# Time:   50	 addr:  4	 pkt: 7
# Time:   55	 addr: 21	 pkt: 3
# Time:   60	 addr: 20	 pkt: 3
# Time:   65	 addr: 30	 pkt: 1
# Time:   70	 addr: 18	 pkt: 1
# Time:   75	 addr:  5	 pkt: 1
# Time:   80	 addr:  8	 pkt: 3
# Time:   85	 addr: 13	 pkt: 1
# Time:   90	 addr:  1	 pkt: 7
# Time:   95	 addr:  1	 pkt: 7
# Time:  100	 addr: 13	 pkt: 3
# exit
