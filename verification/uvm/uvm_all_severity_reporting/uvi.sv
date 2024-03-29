// UVM - Info
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//

`include "uvm_macros.svh"
import uvm_pkg::*;
 
module tb;
 
	initial begin
  		`uvm_info("TB_TOP", "This is Informative message", UVM_MEDIUM)
   		#10;
  		`uvm_warning("TB_TOP", "This is Warning")
   		#10;
  		`uvm_error("TB_TOP", "This is error")
   		#10;
  		`uvm_fatal("TB_TOP", "This is fatal error, stopping simulation")
        $stop;
	end

endmodule

