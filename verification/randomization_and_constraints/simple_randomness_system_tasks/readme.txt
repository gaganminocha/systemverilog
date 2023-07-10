Simple Randomness

--------------------
Problem:
--------------------
a - 32 bits - random unsigned
b - 64 bits - random unsigned
c - 32 bits - random signed
d - 32 bits - random range 4 to 8
e - 32 bits - random rang till 7
f - 32 bits - random range 4 to 8, but opposite parameters

randomize - 10 times

--------------------
Takeaways:
--------------------
-These are system functions.
    $urandom()  
    $random()
    $urandom_range()
-These are procedule call, so should be inside procedural block like intial/always
-$urandom()
    32-bit unsigned random values.
-$random()
    32-bit signed random values.
-$urandom_range([min/max],[min/max])
    32-bit unsigned random values, with range.
-Examples:
    bit [31:0] a;
    bit [63:0] b;
    bit [31:0] c;
    bit [31:0] d;
    bit [31:0] e;
    bit [31:0] f;

    a = $urandom();
    b = {$urandom(), $urandom()};
    c = $random();
    d = $urandom_range(4,8);     // Min: 4   Max: 8
    e = $urandom_range(7);       // Min: 0   Max: 7
    f = $urandom_range(8,4);     // Same as (4,8) --> Min: 4   Max: 8




