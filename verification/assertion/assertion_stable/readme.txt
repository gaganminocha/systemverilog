SVA - stable
	$stable(expr/var)
       
--------------------
Problem:
--------------------
Hypothetical case, where assertion inside tb:
Create tb
    a 1-bit

clk
    10 units time period

Provide values to 'a'

Check 
If 'a' holds a constant value ('0' or '1') throughout.



--------------------
Takeaways:
--------------------
-Syntax:
	$stable(expr/var)

-Returns true if expr remains same, w.r.t. previous clock event, otherwise return 0.


