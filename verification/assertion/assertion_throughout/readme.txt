SVA - throughout
	seq/expr throughout (seq/expr)
       
--------------------
Problem:
--------------------
Hypothetical case, where assertion inside tb:
Create tb
    a	1-bit
    b 	1-bit

clk
    10 units time period

Provide values to 'a', 'b' , 'c' and 'd'

seq = 'a' true, then after 2 cycle 'b' true for 3 consecutive cycles.

Check:
if 'd' is true check from next cycle if 'c' is true throughout 'seq'

--------------------
Takeaways:
--------------------
-Syntax:
	seq/expr throughout (seq/expr)

-Example:
	d |=> c throughout (a ##[1:3] b)
- above sequence is true when the 'c' is true thoughout the sequence, where 'a ##[1:3] b' is true.
			



