SVA - not
	not (seq)
       
--------------------
Problem:
--------------------
Hypothetical case, where assertion inside tb:
Create tb
    a	1-bit
    b 	1-bit
    c 	1-bit
    d 	1-bit

clk
    10 units time period

Provide values to 'a', 'b' , 'c' and 'd'

seq = 'a' true, then after 2 cycle 'b' true, then after 1 cycle ''c true

Check:
if 'd' is true then check 'seq' is never true

--------------------
Takeaways:
--------------------
-Syntax:
	not (seq)

-Example:
	d |=> not (a##1b)
	above sequence is true when 'd' is true, followed by 'a ##1 b' is never true.
			



