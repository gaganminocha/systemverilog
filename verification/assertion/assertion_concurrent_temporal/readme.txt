SVA - Concurrent Assertion
        Temporal
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

Check for 'a' and 'b', either one is equals to 1 at each clk posedge.
Check for 'c' and 'd', either one is equals to 1 at each clk posedge.

Temporal assert for 'a' and 'b', infering clock from always block.
Temporal assert for 'c' and 'd', with explicit clock.

--------------------
Takeaways:
--------------------
-Temporal, means checking spread over multiple cycles.

-Syntax:
    [label:] assert property ([@clk_event] expr) [pass_statement;] [else fail_statement;]

-'property' keyword differentiate it from non-temporal immediate assertions.

-Either it has clock event inside (), or it infers clock from the block above.

-If it has its own explicit clock then it can be written inside module too.

-So can be written inside:
    module
    initial
    always
    task
    function

-Severity of fail_statement:
    $fatal
    $error      // Default
    $warning
    $info
