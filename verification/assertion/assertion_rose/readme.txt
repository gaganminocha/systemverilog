SVA - Rose
	$rose(expr/var)
       
--------------------
Problem:
--------------------
Hypothetical case, where assertion inside tb:
Create tb
    a 1-bit
    b 1-bit

clk
    10 units time period

Provide values to 'a' and 'b'

Check 
If 'a' is high, 'b' should be high exactly after 2 cycles, not before that.



--------------------
Takeaways:
--------------------
-Syntax:
	$rose(expr/var)

-Returns true if LSB of expr chaned to 1, w.r.t. previous clock event, otherwise return 0.

-Why we need $rose, when signal's high value is check by simply writing the signa_name?
	- $rose check if 'b' goes high w.r.t. previous cycle.
	- whereas, just 'b' only checks if 'b' is high in this cycle, 
	 	where 'b' could be high in previous cycle as well.
	- Aim here is to check if 'b' rises after two cycle or not.
	- Example: for a property where we check if 'ack' rises exactly  after 2 cycle of 'req'
       

