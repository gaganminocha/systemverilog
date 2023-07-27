SVA - first_match
first_match(seq)
       
--------------------
Problem:
--------------------
Hypothetical case, where assertion inside tb:
Create tb
    a	1-bit
    b 	1-bit

clk
    10 units time period

Provide values to 'a' and 'b'

seq = 'a' followed by 'b' after 2 to 5 cycles

Check:
first_match(seq)

--------------------
Takeaways:
--------------------
-Syntax:
	first_match(seq)

-Example:
	first_match(a ##[1:3] b)
- above sequence is true when the fist match of 'a ##[1:3] b' is found.
			



