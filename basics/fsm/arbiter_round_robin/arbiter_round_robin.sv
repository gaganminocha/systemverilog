module arbiter_round_robin (input wire clk,
        input wire rst,
        input wire [3:0] req,
        output reg [3:0] gnt);

    localparam s0 = 2'b00;
    localparam s1 = 2'b01;
    localparam s2 = 2'b10;
    localparam s3 = 2'b11;

    reg [1:0] ps;
    reg [1:0] ns;

    always@(posedge clk or posedge rst)     // active high reset
    begin
        if (rst)
            ps <= s0;
        else
            ps <= ns;
    end

    always@(*)
    begin
        case(ps)
            s0:
            begin
                if (req[1])
                    ns <= s1;
                else if (req[2])
                    ns <= s2;
                else if (req[3])
                    ns <= s3;
                else 
                    ns <= s0;
            end 
            s1:
            begin
                if (req[2])
                    ns <= s2;
                else if (req[3])
                    ns <= s3;
                else if (req[0])
                    ns <= s0;
                else 
                    ns <= s1;
            end
            s2:
            begin
                if (req[3])
                    ns <= s3;
                else if (req[0])
                    ns <= s0;
                else if (req[1])
                    ns <= s1;
                else 
                    ns <= s2;
            end
            s3:
            begin
                if (req[0])
                    ns <= s0;
                else if (req[1])
                    ns <= s1;
                else if (req[2])
                    ns <= s2;
                else 
                    ns <= s3;
            end
        endcase
    end


    always@(*)
    begin
        case(ps)
        s0: gnt <= 4'b0001;
        s1: gnt <= 4'b0010;
        s2: gnt <= 4'b0100;
        s3: gnt <= 4'b1000;
        endcase

    end
endmodule
