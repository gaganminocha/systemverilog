Random Variable Disable
rand_mode()

--------------------
Problem:
--------------------

rand pkt        - 4 bits
non-rand pktc   - 4 bits

randomize 6 times

print pkt rand-mode
disable pkt randomize
print pkt rand-mode

randomize 5 times

print pktc rand-mode
disable pktc randomize
print pktc rand-mode

randomize 5 times

Enable all-class randomize
print pktc rand-mode

randomize 6 times

--------------------
Takeaways:
--------------------
-Printing of mode can be done using  <obj>.<var>.rand_mode()
-Disabling and enabling can be done for whole class, <obj>.rand_mode(<0_or_1>)
-But you CAN'T print rand_mode of whole class, <obj>.rand_mode()
