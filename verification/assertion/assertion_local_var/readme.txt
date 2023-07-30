SVA - local variable
	(seq, loc_var=val)
       
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

Check:
when 'a' is true, store value of 'a' in loc_variable.
After 2 cycle, check if   'b' == (value of 'a' 2 cycles ago)

--------------------
Takeaways:
--------------------
-Syntax: Use comma (,) after a variable, when variable is true, whatever is written after comma is exceuted
	(seq, loc_var=val)

-Example:
	(a, loc=a)
	when 'a' is true, then loc is assigned the value of 'a'.

-they are dynamically created and destroyed at the end of sequence.

-Property can also have local variable.

-For every sequence matching attempt, new copy of local is created, and these local variables cannot be accessed outside the scope of sequence.

			



