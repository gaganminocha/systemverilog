SVA - Implication non-overlapped
       
--------------------
Problem:
--------------------
Hypothetical case, where assertion inside tb:
Create tb
    mem_en 	1-bit
    req		1-bit
    gnt	 	1-bit

clk
    10 units time period

Provide values to 'mem_en', 'req' and 'gnt'

Check:
Whenever 'mem_en' is high, check if on every request ('req'), whether it is granted ('gnt') after two clock cylces of request.
Start checking after 1 cycle when 'mem_en' is high.

--------------------
Takeaways:
--------------------
-Implication Operators:
	|->	Overlapped	(checks in same cycle)
	|=>	Non-overlapped	(checks in next cycle)

-Syntax:
	seq1 	  |=> 	  seq2
    (Antecedent)      (Consequent)

-Never used inside sequence block, infact sequences are its operands.    

-It can be used either in assert or inside property block.

