SVA - Simple Property
       
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
Provide values to 'c' and 'd'

Check for 'a' and 'b', either one is equals to 1 at each clk posedge.

Assert for 'a' and 'b' using property, with its own clock.

--------------------
Takeaways:
--------------------
-Syntax:
    property <squence_name>;
	........;
    endproperty    

