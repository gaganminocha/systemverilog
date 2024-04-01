SV - wait fork
	
       
--------------------
Problem:
--------------------

process 1 - 5ns
process 2 - 20ns
process 3 - 30ns

fork join_any and make sure process 2 is completed



--------------------
Takeaways:
--------------------
-Wait: 4 types
wait_statement ::=
wait ( expression ) statement_or_null
| wait fork ;
| wait_order ( hierarchical_identifier { , hierarchical_identifier } ) action_block

-fork join_any wait
    syntax:
        initial
        begin
            fork : fork_label
                begin : process_1
                end
            
                begin : process_2
                end
            join_any
            wait fork;             //wait for all processes of active forks
            <post_join_statements>
        end

-wait statement does not work on labels, whereas disable work on labels.

-wait fork --> waits for all active forks to complete


--------------------
Result:
--------------------


# 0 F1 - Proc 1 start
# 0 F1 - Proc 2 start
# 0 F1 - Proc 3 start
# 10 F1 - Proc 1 end
# 10 F2 - Proc 1 start
# 10 F2 - Proc 2 start
# 10 F2 - Proc 3 start
# 30 F1 - Proc 2 end
# 30 F2 - Proc 1 end
# 50 F1 - Proc 3 end
# 50 F2 - Proc 2 end
# 70 F2 - Proc 3 end
# 70 Wait for fork


