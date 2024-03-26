SV - fork join
	
       
--------------------
Problem:
--------------------
pr# obj1.abc1.a =3 & obj1.abc1.b= 4
# obj2.abc1.a =3 & obj2.abc1.b= 4
# obj1.x =6 & obj1.y= 6
# obj2.x =0 & obj2.y= 0

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


