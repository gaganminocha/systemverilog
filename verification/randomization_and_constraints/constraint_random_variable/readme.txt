Constraint Random variable

--------------------
Problem:
--------------------

addr - 5 bit
addrc - 5 bit

constraint 1 multiline:
    addr <= 5 OR addr 8 to 29
    addr 10 to 28
    addr <= 26

constraints 2:
    addr >= 12

constraints 3:
    addr <= 23



--------------------
Takeaways:
--------------------
-Only comparison expressions can be written, no assignment (=) allowed.

-Expression is evaluated left to right, so one can write contraint as
    addr <= 5 || addr >= 8 && addr <=29 ;
    it will generate addr from 0 to 5  OR 8 to 29;
     
-Finally, all contraints are applied and random values are generated.


Gotcha:
-------
line 11 and 12 --->
    8 <= addr  <= 13  
    8 <= addrc <= 13;
here no constraint is applied, infact simple verilog statement is evaluated from left to right.
8<= addr if TRUE then return 1, else 0.
then that '0' or '1' is further compared with third expression (13), to return the result, but no constraint is applied.

https://www.amiq.com/consulting/2015/09/30/gotcha-using-abc-in-systemverilog-constraints/


