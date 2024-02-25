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
     
-Finally, all contraints are applied and random values are generated


Gotcha:
-------
line 11 and 12 --->
    8 <= addr  <= 13  
    8 <= addrc <= 13;
here no constraint is applied, infact simple verilog statement is evaluated from left to right.
8<= addr if TRUE then return 1, else 0.
then that '0' or '1' is further compared with third expression (13), to return the result, but no constraint is applied.

https://www.amiq.com/consulting/2015/09/30/gotcha-using-abc-in-systemverilog-constraints/




--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3



POS 3
# time =                    0	 addr =  0 	 addrc =  0 
# POS 3
# time =                 5000	 addr = 17 	 addrc = 16 
# POS 3
# time =                10000	 addr = 23 	 addrc = 15 
# POS 3
# time =                15000	 addr = 13 	 addrc = 22 
# POS 3
# time =                20000	 addr = 15 	 addrc = 13 
# POS 3
# time =                25000	 addr = 23 	 addrc = 21 
# POS 3
# time =                30000	 addr = 23 	 addrc = 18 
# POS 3
# time =                35000	 addr = 16 	 addrc = 17 
# POS 3
# time =                40000	 addr = 14 	 addrc = 14 
# POS 3
# time =                45000	 addr = 12 	 addrc = 23 
# POS 3
# time =                50000	 addr = 22 	 addrc = 20 
# POS 3
# time =                55000	 addr = 17 	 addrc = 12 
# POS 3
# time =                60000	 addr = 16 	 addrc = 19 
# POS 3
# time =                65000	 addr = 22 	 addrc = 15 
# POS 3
# time =                70000	 addr = 15 	 addrc = 13 
# POS 3
# time =                75000	 addr = 18 	 addrc = 21 
# POS 3
# time =                80000	 addr = 23 	 addrc = 20 
# POS 3
# time =                85000	 addr = 21 	 addrc = 17 
# POS 3
# time =                90000	 addr = 17 	 addrc = 16 
# POS 3
# time =                95000	 addr = 12 	 addrc = 23 
#
