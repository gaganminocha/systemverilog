// SV - vitual class (abstract), virtual method & polymorphism
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//
	
       
--------------------
Problem:
--------------------
Class 1 : parent
Class 2 : child extended from base

Create objects for both and call child's method using parent object.


--------------------
Takeaways:
--------------------

-polymorphism:
    -simple def: one thing, work diff in diff environment
        -compile time: function overloading & operator overloading - not supported in systemverilog
        -run time: late binding dynamic polymorphism - supported in systemverilog - achieved using virtual method
    

-why polymorphism?
    -it is ability of different classes to be treated as instances of a common base class
    -it enables methods to be called on those instances even if the actual derived class is unknown at compile time
    -it allows for flexibility and reuse of code


-how polymorphism achieved:
    class parent;
        virtual method ...
    endclass

    class child extends base;
        override method ...
    endclass

    option 1:
        parent p;
        child c;
        c = new();
        p = c;      //assigning child pointer to parent
        p.method;   //call the method of child

    option 2:
        parent p = new child();         //this create parent handle and assign child. 
                                        //just like option 1 but without creating child handle 'c'
        p.method                        //calls the method of Child
    

-Gotchas
    -After p_obj = c_obj:
        Methods:    p_obj.methods call parent methods if non-virtual & child method if virtual
        Variable:   p_obj.var always show values of vars in child, as child object assigned to parent object  




--------------------
Result:
--------------------

# 01 - Constructing parent object: 
# Inside Parent - abc class - new() - constructor
#  
# 02 - Constructing child object: 
# Inside Parent - abc class - new() - constructor
# Inside Child - xyz class - new() - constructor
#  
# 03 - Displaying object addresses: 
# addr of parent p1 handle = 65538
# addr of child c1 handle = 65539
#  
# 04 - Displaying Parent methods: 
# Inside Parent - abc class - exhibit() - virtual
# Inside Parent - abc class - show()
#  
# 05 - Displaying Child methods: 
# Inside Child - abc class - exhibit() - virtual
# Inside Child - abc class - show()
#  
# ----Pointing Parent obj to Child obj----
# 01 - New Addresses of Parent & Child objects: 
# addr of parent p1 handle = 65539
# addr of child c1 handle = 65539
#  
# 02 - Displaying Parent methods: 
# Inside Child - abc class - exhibit() - virtual
# Inside Parent - abc class - show()
#  
# 03 - Displaying Parent variable
# value of a: 11
# value of b: 12


