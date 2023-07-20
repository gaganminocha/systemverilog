SVA - Non - Consecutive repetition
expr[=n]
       
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
Whenever 'req' is high, check after 3 cycles if it is granted ('gnt') for any four cycles.

--------------------
Takeaways:
--------------------
-Syntax:
	expr[=n]

-Example:
	a ##1 b[=2]
	when 'a' is true & after 1 cycle if 'b' goes true for any two cycles, seq is matched


