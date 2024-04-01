// SV - disable fork
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
        join_none
        
        disable fork_1_label.fork_1_proc_3; 
        $display($realtime, " Disable fork 1 process 3");

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
        
        disable fork;
        $display($realtime, " Disable fork");

        fork : fork_3_label
            begin : fork_3_proc_1
                $display($realtime, " F3 - Proc 1 start");
                #60
                $display($realtime, " F3 - Proc 1 end");
            end
            
            begin : fork_2_proc_2
                $display($realtime, " F3 - Proc 2 start");
                #70
                $display($realtime, " F3 - Proc 2 end");
            end
        join_none

        fork begin
            fork : fork_4_label
                begin : fork_4_proc_1
                    $display($realtime, " F4 - Proc 1 start");
                    #30
                    $display($realtime, " F4 - Proc 1 end");
                end
            
                begin : fork_2_proc_2
                    $display($realtime, " F4 - Proc 2 start");
                    #40
                    $display($realtime, " F4 - Proc 2 end");
                end
            join_any
            
            disable fork;
            $display($realtime, " Disable fork 4");
            
        end join
    end

endmodule
