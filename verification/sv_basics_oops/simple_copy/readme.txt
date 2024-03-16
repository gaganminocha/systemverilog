SV - Simple Copy
	
       
--------------------
Problem:
--------------------
Class 1 : 2 vars
Class 2 : 2 vars + class 1 inst

Perform simple copy and display results. 


--------------------
Takeaways:
--------------------

-Simple Copy
    Syntax
        obj2 = obj1;
    just act like reference, both obj1 & ob2 points to same memory
    any change made by any handle will reflect on other handle.
    obj1.x = 5; will also be 5 for obj2.x



-Shallow Copy
    Syntax:
        obj2 = new obj1;
    make copies of varible and handles in only immediate class
    NO copy for inner nested classes.
    
    


-Deep copy 


-Shallow Copy Example:


--------------------
Result:
--------------------


# obj1.abc1.a =3 & obj1.abc1.b= 4
# obj2.abc1.a =3 & obj2.abc1.b= 4
# obj1.x =65538 & obj1.y= 6
# obj2.x =6 & obj2.y= 65538

