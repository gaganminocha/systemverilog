SV - Dynamic Cast
	
       
--------------------
Problem:
--------------------

real    r
int     i
int     r2i

cast 'r' into int.


--------------------
Takeaways:
--------------------


-Dynamic Cast
    $cast(target,source)
    
    It performs assignment "target = source", at run time (during simulation)



-Why it is required ?
    
    parent_class    - p_var & func_1
    child class     - extend from parent_class, c_var & func_2
                    - so it has --> p_var, func_1, c_var & func_2

    parent_class  p;    //let's say p address is 21 (p_var, func_1)
    child_class   c;    //let's say c address is 73 (p_var, func_1, c_var, func_2)

    Case 1: 
    p = c;              //allowed, p = 73 now, 
                        //p.p_var & p.func_1, both can be accessed from address 73

    Case 2:
    c = p;              //not-allowed, compile time error
                        //if we do then c=21
                        //then c.p_var & c.func_1, both can be accessed at 21
                        //but c.c_var and c.func_2, both are not available at 21
                        //so, it is not allowed at compile time.
    
    Case 3:
    parent_class  p;    
    child_class   c;    
    child_class   c1;   

    p = new();          //p = 21  
    c = new();          //c = 73
    c1 = new();         //c1 = 99
    
    p = c;              //p = 73 now    allowed
    c1 = p;             //c1 = 73 now   as c1 is now pointing to 73, which is c
                                        it should be allowed
                                        but compile time error, 
                                        as compiler think it is Case 2.


    In order to overcome issue of Case 3, we use $cast(target,source).
    It performs assignment at run-time.



--------------------
Result:
--------------------

# p obj: 65538
# c obj: 65539
# addr: 10
# ----Child----
# addr: 15
# data: 21
# Assignment
# p obj: 65539
# c obj: 65539
# addr: 15
# ----Child----
# addr: 15
# data: 21
# c1 obj: 131075
# Dynamic Typecasting, c1 = p
# c1 obj: 65539
# p obj: 65539
# c obj: 65539
# addr: 15
# ----Child----
# addr: 15
# data: 21
# c1 display
# ----Child----
# addr: 15
# data: 21

