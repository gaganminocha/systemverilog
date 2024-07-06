SV - Data Hiding and Encapsulation
	
       
--------------------
Problem:
--------------------

parent class    - one normal var, one local one protected
child class     - one normal var, one local one protected

Try accessing local and protected members.

--------------------
Takeaways:
--------------------

-local
    syntax:
        local bit [3:0] addr;
    only class methods can use it.
    no direct access outside class is allowed.
    

-protected
    syntax:
        protected bit [3:0] data;
    only class and its derived classes can use it.
    no direct access outside class and its child. 


--------------------
Result:
--------------------

# p_addr: 1, p_data: 2, p_req: 3
# ----Child----
# p_addr: 11, p_data: 5, p_req: 12
# c_addr: 7, c_data: 8, c_req: 9
#  
# Changing variable
# p_addr: 13, p_data: 2, p_req: 3
# ----Child----
# p_addr: 15, p_data: 5, p_req: 12
# c_addr: 14, c_data: 8, c_req: 9

