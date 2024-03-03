// Constraint - simple randomness - system tasks
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//


`timescale 1ns/100ps

module tb;

    bit [31:0] a;
    bit [63:0] b;
    bit [31:0] c;
    bit [31:0] d;
    bit [31:0] e;
    bit [31:0] f;

    initial
    begin
        repeat (10)
        begin
            #10
            a = $urandom();
            b = {$urandom(), $urandom()};
            c = $random();
            d = $urandom_range(4,8);     // Min: 4   Max: 8
            e = $urandom_range(7);       // Min: 0   Max: 7
            f = $urandom_range(8,4);     // Same as (4,8) --> Min: 4   Max: 8
            $display("Time: %d, a:%d, b:%d, c:%d, d:%d, e:%d, f:%d",$time,a,b,c,d,e,f);
        end
    end

endmodule
