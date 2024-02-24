`include "arbiter_round_robin.sv"

module tb_arbiter_round_robin();

    reg clk, rst;
    reg [3:0] req;
    wire [3:0] gnt;
    arbiter_round_robin inst_arbiter_round_robin(clk, rst, req, gnt);


endmodule
