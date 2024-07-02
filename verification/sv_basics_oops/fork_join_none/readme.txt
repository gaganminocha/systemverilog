SV - fork join_none
	
       
--------------------
Problem:
--------------------

process 1 - 5ns
process 2 - 20ns

fork join and check if joined after any one process finishes



--------------------
Takeaways:
--------------------


-fork join_none
    syntax:
        initial
        begin
            fork
                begin : process 1
                end
            
                begin : process 2
                end
            join_none
            <post_join_statements>
        end
    it joins immediately after fork, and not wait for any process.


--------------------
Result:
--------------------


# 0 Join None
# 0 Proc 1 start
# 0 Proc 2 start
# 5 Proc 1 end
# 20 Proc 2 end


