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
    Syntax:
        obj2 = obj1.copy();
    Here user defined function 'copy' is written inside class.
    new object of current class is created to allocate memory.
    Return type of copy function is the class itself.
    It returns an object 'copy' of same class.
    function definition: copies class var to newly created 'copy' object
        
    function <class_name> copy;
        copy = new();               //creates memory for var in current class   
        copy.var1 = this.var1;      //copies class variable to new object 'copy'
        copy.var2 = this.var2            
        copy.<any_obj> = <any_obj>.copy     //copy other class handle in present class.
        return copy
    endfuntion




--------------------
Result:
--------------------

# addr of obj1 = 65538, addr of obj2 = 65538
# obj1.abc1.a =3 & obj1.abc1.b= 4
# obj2.abc1.a =3 & obj2.abc1.b= 4
# obj1.x =7 & obj1.y= 8
# obj2.x =7 & obj2.y= 8


