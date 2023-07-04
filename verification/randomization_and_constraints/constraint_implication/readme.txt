Constraint Implication (->)
    Expression -> Constraint


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
-similar behavior can be achieved using if-else in constraint.
-pkt_size is of enum type 'size', so for printing it, use pkt_size.name
