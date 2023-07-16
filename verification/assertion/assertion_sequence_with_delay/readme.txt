SVA - Simple Sequence with delays
       
--------------------
Problem:
--------------------
Hypothetical case, where assertion inside tb:
Create tb
    a 1-bit
    b 1-bit
    c 1-bit
    d 1-bit

clk
    10 units time period

Provide values to 'a' and 'b'

Check for 'a' and 'b', either one is equals to 1 at each clk posedge.

Assert for 'a' followed by 'b' after 2 cycles using property and sequence, with clock inferred from property.

--------------------
Takeaways:
--------------------
-Syntax:
    sequence <squence_name>;
	........;
    endsequence  

