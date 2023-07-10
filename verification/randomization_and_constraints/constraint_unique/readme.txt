Constraint Unique

--------------------
Problem:
--------------------

rand data   - 3 bit
rand pkt    - 5 bit
rand addr   - 4 bit
rand arr[5] - 6 bit
rand darr[] - 4 bit dynamic array

constraints uni:
    data, pkt & addr    - unique
    addr                - extra constraint of greater than 3.
    arr                 - unique
    darr                - unique with extra constraint of less than 10.

randomize 10 times

--------------------
Takeaways:
--------------------
-Generates unique values for both var and array.

-Vars:
    unique{list of vars to have unique values, not same to each other}
    ex: unique{var1, var2, var3}
    on randomize, unique set of values are generated for var1, var2, and var3,
    i.e. var1 != var2 != var3.

-Array:
    unique{array_name}
    it will generate unique different values of elements of array.
    no two values are same.
    -Kind of implements randc using rand, but instead of a variable, unique values for element of array

-Error scenario:
    unique{var1, var2, var1}
    here var1 and var1 can't be unique, so run-time error, no compile error.



