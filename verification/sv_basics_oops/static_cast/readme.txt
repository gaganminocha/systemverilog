SV - Static Cast
	
       
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

-Casting
    During value or variable assignment to a variable, it is required to assign value or variable of the same data type.
    If datatyes are not same then datatype conversion is required to avoid error.
    This datatype conversion is know as Casting.
    It has 2 types:
        Static
        Dynamic    


-Static Cast
    SystemVerilog static casting is not applicable to OOP
    Static casting converts one data type to another compatible data types  (example string to int)
    As the name says ‘Static’, the conversion data type is fixed
    Static casting will be checked during compilation, so there won’t be run-time checking and error reporting
    Casting is applicable to value, variable or to an expression
    A data type can be changed by using a cast ( ‘ ) operation
    The vale/variable/expression to be cast must be enclosed in parentheses or within concatenation or replication braces   



-Syntax
    a = int'(b);
    
    2.7 is typecast to 3.


--------------------
Result:
--------------------

# real: 2.700000, int: 5
# real to int of 2.700000: 3

