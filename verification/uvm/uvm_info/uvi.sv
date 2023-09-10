`include "uvm_macros.svh"
import uvm_pkg::*;
 
module tb;
 
	initial begin
  		`uvm_info("TB_TOP", "This is Informative message", UVM_MEDIUM)
        $stop;
	end

endmodule






	    
