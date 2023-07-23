SVA - Consecutive repetition range
expr[*n:m]
       
--------------------
Problem:
--------------------
Hypothetical case, where assertion inside tb:
Create tb
    req		1-bit
    gnt	 	1-bit

clk
    10 units time period

Provide values to 'req' and 'gnt'

Check:
Whenever 'req' is high, check after 1 cycles if it is granted ('gnt') for two to five consecutive cycles.

--------------------
Takeaways:
--------------------
-Syntax:
	expr[*n]

-Example:
	a ##1 b[*2:6]
	when 'a' is true & after 1 cycle if 'b' goes true for two to six consecutive cycles, seq is matched


