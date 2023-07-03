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
