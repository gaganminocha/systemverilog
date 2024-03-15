SV - Shallow Copy
	
       
--------------------
Problem:
--------------------
Class 1 : 2 vars
Class 2 : 2 vars + class 1 inst

Perform shallow copy and display results. 


--------------------
Takeaways:
--------------------

-Simple Copy



-Shallow Copy
    Syntax:
        obj2 = new obj1;
    make copies of varible in class, but NOT for inner classes.


-Deep copy 


-Shallow Copy Example:


--------------------
Result:
--------------------

# obj1.abc1.a =3 & obj1.abc1.b= 4
# obj2.abc1.a =3 & obj2.abc1.b= 4
# obj1.x =6 & obj1.y= 6
# obj2.x =0 & obj2.y= 0

