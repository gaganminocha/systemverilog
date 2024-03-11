UVM - uvm_object - do_print
	
       
--------------------
Problem:
--------------------
Just compile a basic class extended from uvm_object.
Do include factory registry and constructor.
Use do_print() to display rand values of 4 bit 'data' 

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

-inbuilt method are less efficient so we use do_* methods (commonly called do_hooks).


-with do_*, we can customize the function and do things beyond just field macros

-with do_* methods, no field_macros required.
    so for factory registry we use uvm_objects_utils(obj)

-with do_* methods, we customize already available do_* method
    Example: do_print prototype
    virtual function void do_print (uvm_printer printer) 


-do_print - it gives access to uvm_printer through it's argument

-uvm_printer - The uvm_printer class provides an interface for printing uvm_objects in various formats.  Subtypes of uvm_printer implement different print formats, or policies.

-uvm_printer - methods
    print_field
    print_field_int
    print_object
    ...


-print_field_int
    virtual function void print_field_int (
        	string  	        name, 	   	
        	uvm_integral_t  	value, 	   	
        	int  	            size, 	   	
        	uvm_radix_enum  	radix =	UVM_NORADIX,
        	byte  	            scope_separator = ".",
        	string  	        type_name =  	""
    )

    Prints an integral field (up to 64 bits).
    name	The name of the field.
    value	The value of the field.
    size	The number of bits of the field (maximum is 64).
    radix	The radix to use for printing.  The printer knob for radix is used if no radix is specified.
    scope_separator	is used to find the leaf name since many printers only print the leaf name of a field.  Typical values for the separator are . (dot) or [ (open bracket).


-print_field
    same as print_field_int with up to 4096 bits.


-in tb module, we still call it by tr.print() and not tr.do_print(), as if do_* available, simulator will automatically use them, else the inbuilt print() is used.


-print() format - 3 available - change arguments as below
    table           - uvm_default_table_printer
    tree            - uvm_default_tree_printer  
    single line     - uvm_default_line_printer

    no argument means default to table
    also 'uvm_default_printer' sets it to 'uvm_default_table_printer' 
    

-constructing object of class is done by 'create' method (which will be discussed later), here 'new' is being used.



--------------------
Result:
--------------------
field macro radix - UVM_DEC
print format - Default table


#--------------------------------
# Name    Type         Size  Value
# --------------------------------
# tr      transaction  -     @355 
#   data  integral     4     12   
# --------------------------------
# ** Note: $stop    : testbench.sv(39)
#    Time: 0 ns  Iteration: 0  Instance: /tb
# Break in Module tb at testbench.sv line 39
# exit



