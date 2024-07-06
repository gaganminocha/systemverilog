UVM - uvm_object - in built print
	
       
--------------------
Problem:
--------------------
Just compile a basic class extended from uvm_object.
Do include factory registry and constructor.
Use inbuild print() to display rand values of 4 bit 'data' 

--------------------
Takeaways:
--------------------
-uvm_object is used as base class for making dynamic class like transaction.

-basic operations we do with dynamic classes are following, for which we have inbuilt methods in uvm_object class 
    print
    deep copy
    compare 
    clone
    pack/unpack
    record
    create

-For using inbuilt print, field macros are being used.

-The `uvm_field_* macros are invoked inside of the `uvm_*_utils_begin and `uvm_*_utils_end macro blocks to form “automatic” implementations of the core data methods: copy, compare, pack, unpack, record, print, and sprint. 


-uvm_factory - registry is not done by uvm_object_utils(obj), but with uvm_object_utils_begin & uvm_objec_utils_end

-uvm_field_* macros in used inside these begin and end utils macros.


-Syntax:      
    `uvm_object_utils_begin(obj)   
        `uvm_field_int(ARG,FLAG)        
    `uvm_object_utils_end
        
    obj - is the name of the class extended from uvm_object
    ARG - varaible name
    FLAG - setting, multi flag applied using OR operator '|'

-uvm_object
    use to build dynamic component (like transaction class) - which changes with every simulation iteration


-FLAGs for uvm_field_* macros
    UVM_ALL_ON	    Set all operations on (default).
    UVM_DEFAULT	    Use the default flag settings.
    UVM_NOCOPY	    Do not copy this field.
    UVM_NOCOMPARE	Do not compare this field.
    UVM_NOPRINT	    Do not print this field.
    UVM_NODEFPRINT	Do not print the field if it is the same as its
    UVM_NOPACK	    Do not pack or unpack this field.
    UVM_PHYSICAL	Treat as a physical field.  Use physical setting in policy class for this field.
    UVM_ABSTRACT	Treat as an abstract field.  Use the abstract setting in the policy class for this field.
    UVM_READONLY	Do not allow setting of this field from the set_*_local methods.
    
    A radix for printing and recording can be specified by OR’ing one of the following constants in the FLAG argument
    UVM_BIN	        Print / record the field in binary (base-2).
    UVM_DEC	        Print / record the field in decimal (base-10).
    UVM_UNSIGNED	Print / record the field in unsigned decimal (base-10).
    UVM_OCT	        Print / record the field in octal (base-8).
    UVM_HEX	        Print / record the field in hexidecimal (base-16). Default
    UVM_STRING	    Print / record the field in string format.
    UVM_TIME	    Print / record the field in time format.


-print() format - 3 available - change arguments as below
    table           - uvm_default_table_printer
    tree            - uvm_default_tree_printer  
    single line     - uvm_default_line_printer

    no argument means default to table
    also 'uvm_default_printer' sets it to 'uvm_default_table_printer' 
    

-constructing object of class is done by 'create' method (which will be discussed later), here 'new' is being used.



--------------------
Result 1:
--------------------
field macro radix - Default hexadecimal
print format - Default table


# --------------------------------
# Name    Type         Size  Value
# --------------------------------
# tr      transaction  -     @355 
#   data  integral     4     'hc  
# --------------------------------
# ** Note: $stop    : testbench.sv(35)
#    Time: 0 ns  Iteration: 0  Instance: /tb
# Break in Module tb at testbench.sv line 35
# exit



--------------------
Result 2:
--------------------
field macro radix - UVM_DEC in field macro
print format - tree - print(uvm_default_tree_printer)


# tr: (transaction@355) {
#   data: 12 
# }
# ** Note: $stop    : testbench.sv(35)
#    Time: 0 ns  Iteration: 0  Instance: /tb
# Break in Module tb at testbench.sv line 35
# exit



--------------------
Result 3:
--------------------
field macro radix - UVM_OCT in field macro
print format - line - print(uvm_default_line_printer)

# tr: (transaction@355) { data: 'o14  } 
# ** Note: $stop    : testbench.sv(35)
#    Time: 0 ns  Iteration: 0  Instance: /tb
# Break in Module tb at testbench.sv line 35
# exit



