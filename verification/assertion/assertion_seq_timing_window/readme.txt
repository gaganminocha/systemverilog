SVA - Timing Window
##[min:max]
       
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
Whenever 'req' is high, check if it is granted ('gnt') within next 1 to 3 cycles.

--------------------
Takeaways:
--------------------
-Syntax:
	##[min:max]

-Example:
	a ##[1:5]
	when 'a' is true and 'b' goes true in 1 to 5 cycles, seq is matched


