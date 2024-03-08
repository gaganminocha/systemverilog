// UVM - Info $sformatf
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//


`include "uvm_macros.svh"
import uvm_pkg::*;
 
module tb;
    
    int addr = 2048;

	initial begin
        `uvm_info("TB_TOP", $sformatf("Value of addr is: ", addr ) , UVM_MEDIUM)
        $stop;
	end

endmodule

