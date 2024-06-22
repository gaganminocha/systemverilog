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
    -Kind of implements randc using rand, but instead of a variable, unique values for element of array (all generated in first randomize, whereas randc generate unique values over multiple randomize calls)

-Error scenario:
    unique{var1, var2, var1}
    here var1 and var1 can't be unique, so run-time error, no compile error.


--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3

# run -all
# Time:                   10
# data: 3	pkt: 30	addr:  5
# arr: 29 	arr: 62 	arr: 57 	arr:  6 	arr: 28 	 
# darr:  9 	darr:  3 	darr:  4 	darr:  7 	darr:  1 	darr:  0 	darr:  5 	darr:  8 	darr:  2 	darr:  6 	 
# Time:                   20
# data: 6	pkt: 22	addr: 10
# arr: 33 	arr: 24 	arr: 19 	arr: 46 	arr: 10 	 
# darr:  3 	darr:  7 	darr:  4 	darr:  9 	darr:  6 	darr:  5 	darr:  1 	darr:  8 	darr:  0 	darr:  2 	 
# Time:                   30
# data: 4	pkt: 14	addr: 12
# arr: 57 	arr: 20 	arr: 37 	arr: 62 	arr: 61 	 
# darr:  8 	darr:  5 	darr:  0 	darr:  1 	darr:  7 	darr:  9 	darr:  3 	darr:  4 	darr:  6 	darr:  2 	 
# Time:                   40
# data: 3	pkt: 14	addr:  9
# arr: 20 	arr: 24 	arr: 58 	arr: 39 	arr: 44 	 
# darr:  5 	darr:  6 	darr:  3 	darr:  8 	darr:  7 	darr:  2 	darr:  9 	darr:  0 	darr:  1 	darr:  4 	 
# Time:                   50
# data: 7	pkt: 12	addr: 13
# arr: 19 	arr: 35 	arr: 57 	arr: 38 	arr:  3 	 
# darr:  0 	darr:  4 	darr:  2 	darr:  5 	darr:  1 	darr:  3 	darr:  9 	darr:  8 	darr:  7 	darr:  6 	 
# Time:                   60
# data: 1	pkt:  4	addr:  6
# arr: 59 	arr:  0 	arr: 35 	arr: 14 	arr: 20 	 
# darr:  0 	darr:  2 	darr:  6 	darr:  5 	darr:  3 	darr:  1 	darr:  8 	darr:  7 	darr:  4 	darr:  9 	 
# Time:                   70
# data: 3	pkt: 25	addr:  8
# arr: 20 	arr: 37 	arr: 16 	arr: 17 	arr: 28 	 
# darr:  2 	darr:  6 	darr:  3 	darr:  7 	darr:  9 	darr:  0 	darr:  8 	darr:  5 	darr:  1 	darr:  4 	 
# Time:                   80
# data: 2	pkt:  4	addr: 13
# arr: 11 	arr: 41 	arr: 13 	arr: 44 	arr: 60 	 
# darr:  0 	darr:  1 	darr:  6 	darr:  9 	darr:  8 	darr:  7 	darr:  5 	darr:  4 	darr:  3 	darr:  2 	 
# Time:                   90
# data: 0	pkt: 30	addr:  8
# arr: 22 	arr: 58 	arr:  3 	arr: 42 	arr: 31 	 
# darr:  2 	darr:  9 	darr:  0 	darr:  8 	darr:  4 	darr:  6 	darr:  1 	darr:  3 	darr:  7 	darr:  5 	 
# Time:                  100
# data: 3	pkt: 31	addr: 12
# arr: 18 	arr: 23 	arr: 54 	arr: 34 	arr:  0 	 
# darr:  8 	darr:  0 	darr:  1 	darr:  3 	darr:  2 	darr:  7 	darr:  4 	darr:  9 	darr:  6 	darr:  5 	 
# exit


