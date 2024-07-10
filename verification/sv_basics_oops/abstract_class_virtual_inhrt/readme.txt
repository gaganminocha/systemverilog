SV - abstract class - virtual
	
       
--------------------
Problem:
--------------------
Class 1 : virtual
Class 2 : extended from virtual

Create objects for both, check for any errors and call methods.


--------------------
Takeaways:
--------------------

-virtual class 
    -syntax: 
        simply add the 'virtual' before 'class <class_name>
    -it makes the class as abstract class
    -this abstract class cannot be instantiated. Instantiation will give run-time error 
        Error: Class allocator method 'new' called on abstract class 'abc'
    -this abstract class can only be used for deriving other class.
    -it can have methods - both virtual and concrete (non-vitual with definition, like normal method)

-why virtual class?
    -provide a common interface and some level of shared functionality.
    -create a flexible and reusable code structure where the base class provides a common interface and the derived classes provide specific implementations



--------------------
Result:
--------------------

# 01 - Constructing child object: 
# Inside Parent - abc class - new() - constructor
# Inside Child - xyz class - new() - constructor
#  
# 02 - Displaying object addresses: 
# addr of parent p1 handle = null
# addr of child c1 handle = 65539
#  
# 03 - Displaying Child methods: 
# Inside Child - abc class - exhibit() - virtual
# Inside Child - abc class - show()
#  
# ---Extra concept to understand (polymorphism): parent handle points to child---
# 04 - Pointing Parent handle to child, and displaying Parent methods: 
# Inside Child - abc class - exhibit() - virtual
# Inside Parent - abc class - show()
#  
# 05 - Addresses after Parent handle pointed to Child: 
# addr of parent p1 handle = 65539
# addr of child c1 handle = 65539


