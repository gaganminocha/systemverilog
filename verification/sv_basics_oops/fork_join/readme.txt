SV - fork join
	
       
--------------------
Problem:
--------------------

process 1 - 5ns
process 2 - 20ns

fork join and check if joined after both process finish



--------------------
Takeaways:
--------------------


-fork_join
    syntax:
        initial
        begin
            fork
                begin : process 1
                end
            
                begin : process 2
                end
            join
            <post_join_statements>
        end
    it joins after all the process are completed


--------------------
Result:
--------------------


# 0 Proc 1 start
# 0 Proc 2 start
# 5 Proc 1 end
# 20 Proc 2 end
# 20 Join


