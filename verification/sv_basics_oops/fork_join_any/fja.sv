// SV - fork join any
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//



module tb;
    
    initial
    begin
        fork
            begin : proc_1
                $display($realtime, " Proc 1 start");
                #5
                $display($realtime, " Proc 1 end");
            end
            
            begin : proc_2
                $display($realtime, " Proc 2 start");
                #20
                $display($realtime, " Proc 2 end");
            end
        join_any
        $display($realtime, " Join Any");
        
    end

endmodule
