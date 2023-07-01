`timescale 1ns/1ps

class crv;
    rand  bit [4:0] addr;
    randc bit [4:0] addrc;
   
    constraint multiline {
        addr  <= 5 || addr  >= 8 && addr  <= 29 ;
        addrc <= 5 || addrc >= 8 && addrc <= 29 ;
       
        8 <= addr  <= 13;               //wrong way for range, read Gotcha.
        8 <= addrc <= 13;

        addr  >= 10 && addr  <= 28;     //Correct way for range
        addrc >= 10 && addrc <= 28;

        addr  <= 26;    
        addrc <= 26;
    }

    constraint gt_12 {
        addr  >= 12;
        addrc >= 12;
    }
   
    constraint lt_23 {
        addr  <= 23;
        addrc <= 23;
    }

endclass


module tb;
    crv obj;

    initial
    begin
        obj = new();
        $monitor("time = %t\t addr = %d \t addrc = %d ",$time, obj.addr, obj.addrc);
        repeat (20)
        begin
            $display("POS 3");
            #5 obj.randomize();
        end
        $stop;
    end

endmodule
