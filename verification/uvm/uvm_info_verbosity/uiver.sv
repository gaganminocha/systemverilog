// UVM - Info Verbosity
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//


`include "uvm_macros.svh"
import uvm_pkg::*;
 
module tb;
    
    int vb = 0;

	initial begin
        vb = uvm_top.get_report_verbosity_level();
        $display("Default Verbosity: %d", vb);
  		
        `uvm_info("TB_TOP", "This is MEDIUM message", UVM_MEDIUM);
        `uvm_info("TB_TOP", "This is MEDIUM with vaue 200", 200);
        `uvm_info("TB_TOP", "This is MEDIUM with vaue 199", 199);
  		#5
        `uvm_info("TB_TOP", "This is MEDIUM with vaue 201", 201);
        `uvm_info("TB_TOP", "This is FULL message", UVM_FULL);
        #5
        uvm_top.set_report_verbosity_level(250);
        vb = uvm_top.get_report_verbosity_level();
        $display("Default Verbosity: %d", vb);
        `uvm_info("TB_TOP", "This is FULL message", UVM_FULL);
        `uvm_info("TB_TOP", "This is MEDIUM message", 200);
        `uvm_info("TB_TOP", "This is VAL 249", 249);

        
        
        
        $stop;
	end

endmodule

