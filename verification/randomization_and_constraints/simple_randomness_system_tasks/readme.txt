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




--------------------
Result:
--------------------
Note: This result is generated using edaplayground
Tool & Simulation: Mentor Questa 2021.3

# run -all
# Time:  10, a:3948585912, b: 1690270595130702182, c: 303379748, d: 6, e: 6, f: 4
# Time:  20, a:1003556722, b: 8546692100957619303, c:3230228097, d: 7, e: 2, f: 7
# Time:  30, a:1628895855, b:15175752328643425845, c:2223298057, d: 8, e: 6, f: 5
# Time:  40, a: 852277211, b:12028848545790265059, c:2985317987, d: 5, e: 5, f: 8
# Time:  50, a: 926387493, b: 7045634131091268701, c: 112818957, d: 7, e: 0, f: 4
# Time:  60, a: 725602646, b: 5036031300153930425, c:1189058957, d: 7, e: 0, f: 4
# Time:  70, a:1311230164, b: 5367421652918756544, c:2999092325, d: 6, e: 5, f: 4
# Time:  80, a:3855315544, b: 3728973145599822130, c:2302104082, d: 8, e: 4, f: 8
# Time:  90, a: 488527450, b: 7182708033663202806, c:  15983361, d: 7, e: 2, f: 5
# Time: 100, a: 252449007, b:17986431623923654089, c: 114806029, d: 8, e: 7, f: 4
# exit

