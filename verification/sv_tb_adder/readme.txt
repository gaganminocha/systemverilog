Full Verification of adder
    without monitor, agent and scoreboard.


--------------------
Problem:
--------------------

a       - input 4 bits
b       - input 4 bits
valid   - input
clk     - input
reset   - input

c       - output 7 bits

     
Spec:
If valid is high, values of a and b are valid.
c = a + b on next cyle.

Create the verification testbench using systemverilog.

--------------------
Takeaways:
--------------------
-Transaction:
    All variables which you want to sample.
    Inputs are rand if required.
    
        
-Generator:
    randomize transaction.
    take mailbox from environment via constructor.
    add value to mailbox after randomizing.
    Repeat the steps if you want to generate multiple vectors 
    take a event which is trigerred when generation ends.


-Interface:
    create interface having all the ports.
    

-Driver:
    receive the stimulus from generator from mailbox in env via constructor.
        here mailbox is outside the driver. 
    assign transaction values (stimulus) to virtual interface via constructor. 
        here instead of direct object of interface we use virtual interface.
        reason is covered in theory, which says that classes are dynamic.
        they are not contructed until we call new function.
        so we cannot connect a harware interace with a class, until its created.
        thats why, while writing class, we use virtual interface.
        which is connected with real hardware interface while creating object
        that is why real interface is send by new() of class in env.
    reset task
        wait for reset to go 1.
        drive all inputs as per spec, generally we drive inputs to 0
        wait till reset goes 0.
    main driver task
        infinitely running.
        controlled by comparing with repeat count of generator.
        get the values from mailbox to local transaction object.
        use clk of interface and drive values.
        also play with valid as desired.
        read outputs from interface into transaction.
        use display of transaction to show results.


-Environment:
    container class for generator, mailbox and driver.
    mailbox harware is present here so it is created.
    take interface from outside using constructor.
    generator and driver activites are controlled here


-Test program:
    having same interface, instantiate just like module
    create env object
    set the gen repeat value.


-tb_top module:
    it creates clk, also sets reset.
    test-program and DUT to instantiate and connect with interface.
    
     

