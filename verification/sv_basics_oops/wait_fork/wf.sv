// SV - wait fork
//
// Author: Gagan Minocha (igaganminocha@gmail.com)
//



module tb;
    
    initial
    begin
        fork : fork_1_label
            begin : fork_1_proc_1
                $display($realtime, " F1 - Proc 1 start");
                #10
                $display($realtime, " F1 - Proc 1 end");
            end
            
            begin : fork_1_proc_2
                $display($realtime, " F1 - Proc 2 start");
                #30
                $display($realtime, " F1 - Proc 2 end");
            end
            
            begin : fork_1_proc_3
                $display($realtime, " F1 - Proc 3 start");
                #50
                $display($realtime, " F1 - Proc 3 end");
            end
        join_any
        
        //wait fork; 

        fork : fork_2_label
            begin : fork_2_proc_1
                $display($realtime, " F2 - Proc 1 start");
                #20
                $display($realtime, " F2 - Proc 1 end");
            end
            
            begin : fork_2_proc_2
                $display($realtime, " F2 - Proc 2 start");
                #40
                $display($realtime, " F2 - Proc 2 end");
            end
            
            begin : fork_2_proc_3
                $display($realtime, " F2 - Proc 3 start");
                #60
                $display($realtime, " F2 - Proc 3 end");
            end
        join_any
        
        wait fork;

        $display($realtime, " Wait for fork");
        
    end

endmodule
