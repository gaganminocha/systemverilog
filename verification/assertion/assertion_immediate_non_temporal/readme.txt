SVA - Immediate Assertion
    Non-Temporal

--------------------
Problem:
--------------------
Hypothetical case, where assertion inside tb:
Create tb
    a 1-bit
    b 1-bit
    c 1-bit
    d 1-bit

clk
    10 units time period

Provide values to 'a' and 'b'
Provide values to 'c' and 'd'

Check for 'a' and 'b', both equals to 1 at each clk posedge.
Check for 'c' and 'd', both equals to 1 at each clk posedge.

Simple assert for 'a' and 'b'
Try different severity and messages for 'c' and 'd'

--------------------
Takeaways:
--------------------
-Non-temporal.

-Check for condition at current time.

-Syntax:
    [label:] assert (expr) [pass_statement;] [else fail_statement;]

-Executed like if-else procedural statement, so can be written inside:
    initial
    always
    task
    function

-Severity of fail_statement:
    $fatal
    $error      // Default
    $warning
    $info
