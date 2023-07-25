SVA - OR operator
seq1 OR seq2
       
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

Provide values to 'a', 'b', 'c' and 'd'

seq1 = 'a' followed by 'b' after 2 cycles
seq2 = 'c' followed by 'd' after 1 cycle

Check:
seq1 OR seq2

--------------------
Takeaways:
--------------------
-Syntax:
	seq1 OR seq2

-Example:
	res = seq1 OR seq2
-'res' is only true when all 3 conditions meet:
	-Both seq1 and seq2 starts from same cycle.
	-seq1 and seq2 are true independently.
	-'res' is considered to be true at the end time of the first sequence
		if seq1 matches in 2 cycles and seq2 matches in 3 cycles,
		then res is considered to be matched at the end of 2nd cycle.
		
			



