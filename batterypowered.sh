#!/bin/sh

#automated script to asjust undervoltage for the Microsoft Surface device
#============= battery operation ==============
#set undervoltage 100mV on CPU and 100mV on GPU
undervolt --core -100 --cache -100 --gpu -100 

#set temperature limit, degrees C 
undervolt --temp-bat 70

#power limit options are either flexible or locked
#power limit is flexible between 15W and 25W 
undervolt -p1 25 5 && undervolt -p2 15 30

#OR

#force power limit at 15W (locked)
#undervolt --lock-power-limit 15 

#give notification
echo "Battery-powered undervolting profile is applied"
