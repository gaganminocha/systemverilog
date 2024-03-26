SV - fork join any
	
       
--------------------
Problem:
--------------------

process 1 - 5ns
process 2 - 20ns

fork join and check if joined after any one process finishes



--------------------
Takeaways:
--------------------


-fork join_any
    syntax:
        initial
        begin
            fork
                begin : process 1
                end
            
                begin : process 2
                end
            join_any
            <post_join_statements>
        end
    it joins after any of the process is completed


--------------------
Result:
--------------------


# 0 Proc 1 start
# 0 Proc 2 start
# 5 Proc 1 end
# 5 Join Any
# 20 Proc 2 end


