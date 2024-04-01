SV - disable fork
	
       
--------------------
Problem:
--------------------

write multiple forks
disable all forks
disable specific fork's process
disable fork - without disabling other active fork 


--------------------
Takeaways:
--------------------
-disable fork will disable all the active fork.


-fork join_any disable
    syntax:
        initial
        begin
            fork : fork_label
                begin : proc_1
                end
            
                begin : proc_2
                end
            join_any
            diable fork;                //disable all processes of all active forks
            disable fork_label          //disable all processes of labeled fork
            disable fork_label.proc_1   //disable proc_1 of fork
            disable fork_label.proc_2   //disable proc_2 of fork
            <post_join_statements>
        end



Note:
-disable fork, disables all the active fork, so to avoid this situation, when a specific 'fork' or a 'process of fork' is to be disabled without disable other active fork or processes, there are 2 methods:
    
    1. As mentioned above, use labels to disable specific fork or process of fork
    2. wrap around the fork inside under fork. This will only disable the inner fork
        syntax:
            //wrapper fork - begin in same line 
            //means it has only one process
            //this fork is a just a wrapper fork
            fork begin
                fork 
                    begin: proc_1
                    end
                    
                    begin: proc_2
                    end
                disable fork
            end join


--------------------
Result:
--------------------


# 0 Disable fork 1 process 3
# 0 F2 - Proc 1 start
# 0 F2 - Proc 2 start
# 0 F2 - Proc 3 start
# 0 F1 - Proc 1 start
# 0 F1 - Proc 2 start
# 0 F1 - Proc 3 start
# 10 F1 - Proc 1 end
# 20 F2 - Proc 1 end
# 20 Disable fork
# 20 F4 - Proc 1 start
# 20 F4 - Proc 2 start
# 20 F3 - Proc 1 start
# 20 F3 - Proc 2 start
# 50 F4 - Proc 1 end
# 50 Disable fork 4
# 80 F3 - Proc 1 end
# 90 F3 - Proc 2 end


