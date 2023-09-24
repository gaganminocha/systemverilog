`include "dut.sv"

class transaction;

    rand bit [3:0] a;
    rand bit [3:0] b;

    bit [7:0] c;

    function void display(string name);
   	    $display("%s", name);
   	    $display("a = %d, b = %d",a,b);
   	    $display("a = %d, b = %d",a,b);
    endfunction
			     
endclass


class generator;
    
    rand transaction trans;
    mailbox mbx;
    event ended;
    int gen_repeat;

    function new(mailbox mbx);
        this.mbx = mbx;
    endfunction

    task main();
        repeat (gen_repeat)
        begin
            trans = new();
            if(!trans.randomize()) $fatal("Unable to randomize");
            mbx.put(trans);
            -> ended;
        end        
    endtask

endclass


interface intf(input logic clk, reset);
    logic [3:0] a;
    logic [3:0] b;
    logic [6:0] c;
    logic valid;
endinterface


class driver;
    
    mailbox mbx;
    virtual intf vif;
    int no_of_transactions = 0;

    function new(virtual intf vif, mailbox mbx);
        this.vif = vif;
        this.mbx = mbx;
    endfunction

    task reset;
        wait(vif.reset);
        $display("[DRIVER] - Reset started -");
        vif.a <= 0;
        vif.b <= 0;
        vif.valid <= 0;
        wait(!vif.reset);
        $display("[DRIVER] - Reset ended -");
    endtask

    task main;
    forever
    begin
        transaction trans;
        mbx.get(trans);
        @(posedge vif.clk)
        vif.valid <= 1;
        vif.a <= trans.a;
        vif.b <= trans.b;
        @(posedge vif.clk)
        vif.valid <= 0;
        trans.c <= vif.c;
        @(posedge vif.clk);
        trans.display("DRIVER");
        no_of_transactions++;
    end
    endtask

endclass


class env;

    generator gen;
    driver drv;
    
    mailbox mbx;

    virtual intf vif;

    function new(virtual intf vif);
        this.vif = vif;
        mbx = new();

        gen = new(mbx);
        drv = new(vif, mbx);
    endfunction

    task pre_test();
        drv.reset();
    endtask

    task test();
        fork
            gen.main();
            drv.main();
        join_any
    endtask

    task post_test();
        wait(gen.ended.triggered);
        wait(gen.gen_repeat == drv.no_of_transactions);
    endtask

    task run();
        pre_test();
        test();
        post_test();
        $finish;
    endtask

endclass

program test (intf intfp);

    env envh;

    initial
    begin
        envh = new(intfp);
        envh.gen.gen_repeat = 10;  
        envh.run();
    end

endprogram


module tb_top;

    bit clk;
    bit reset;

    intf intftop(clk, reset);
    
    add add_inst(
        .clk(intftop.clk),
        .reset(intftop.reset),
        .valid(intftop.valid),
        .a(intftop.a),
        .b(intftop.b),
        .c(intftop.c));

    test test_inst(intftop);
    
   
    always #5 clk = ~clk; 


    initial 
    begin
        reset = 1;
        #5 reset =0;
    end
    

    initial
    begin
        clk = 0;
    end

    initial
    begin
        $dumpfile("dump.vcd"); $dumpvars;
    end

endmodule
