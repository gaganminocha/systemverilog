`include "arbiter_round_robin.sv"

module tb_arbiter_round_robin();

    reg clk, rst;
    reg [3:0] req;
    wire [3:0] gnt;
    
    arbiter_round_robin dut_arbiter_round_robin(clk, rst, req, gnt);
    
    initial
    begin : clock_generator
        clk = 1;
        forever #5 clk = ~clk;
    end

    initial
    begin : dump_vcd_file
        $dumpfile("test_01_arbiter_round_robin.vcd");
        $dumpvar(0, dut_arbiter_round_robin);
    end

    initial
    begin : test_01
        rst = 1;
        #15 rst = 0;
        #10 req = 4'b1111;
       // #10 req = 4'b1000;
       // #10 req = 4'b1100;
       // #10 req = 4'b1110;
       // #10 req = 4'b0000;
        #100 $stop;
    end
    
    

endmodule
