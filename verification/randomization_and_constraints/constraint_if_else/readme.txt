Constraint If-else
    if (Expression)
        constraint
    else if
        constraint
    else
        constraint


--------------------
Problem:
--------------------

enum size having:
    xs, s, m, l and xl

pkt     - 5 bits

constraint:
    for xs: pkt is  0 to  8
    for  s: pkt is  9 to 14
    for  m: pkt is 15 to 22
    for  l: pkt is 23 to 27
    for xl: pkt is 28 to 31


randomize 20 times


--------------------
Takeaways:
--------------------
-similar behavior can be achieved using implication (->) in constraint.
-pkt_size is of enum type 'size', so for printing it, use pkt_size.name



--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3

run -all
# pkt_size= s	 pkt:14
# pkt_size= xs	 pkt: 3
# pkt_size= m	 pkt:22
# pkt_size= m	 pkt:22
# pkt_size= m	 pkt:19
# pkt_size= m	 pkt:18
# pkt_size= l	 pkt:23
# pkt_size= xs	 pkt: 3
# pkt_size= s	 pkt:14
# pkt_size= l	 pkt:23
# pkt_size= l	 pkt:24
# pkt_size= l	 pkt:24
# pkt_size= s	 pkt:14
# pkt_size= l	 pkt:24
# pkt_size= xs	 pkt: 6
# pkt_size= xl	 pkt:29
# pkt_size= s	 pkt:12
# pkt_size= s	 pkt: 9
# pkt_size= l	 pkt:23
# pkt_size= xs	 pkt: 5
# exit
