SVA - Non - Consecutive repetition range
expr[=n:m]
       
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
Whenever 'req' is high, check after 3 cycles if it is granted ('gnt') for any one to four cycles.

--------------------
Takeaways:
--------------------
-Syntax:
	expr[=n:m]

-Example:
	a ##1 b[=2:6]
	when 'a' is true & after 1 cycle if 'b' goes true for any two to six cycles, seq is matched


