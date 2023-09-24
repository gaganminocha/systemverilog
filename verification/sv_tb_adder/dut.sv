module add (a, b, valid, clk, reset, c);
    input [3:0] a;
    input [3:0] b;
    input valid, clk, reset;
    
    output reg [6:0] c;


    always @(posedge clk)
    begin
        if (reset)
            c = 0;
        else
        begin
            if (valid)
                c <= a + b;
        end

    end


endmodule
