#!/bin/sh

#automated script to asjust undervoltage for the Microsoft Surface device
#============= battery operation ==============
#set undervoltage 130mV on CPU and 100mV on GPU
undervolt --core -130 --cache -130 --gpu -100 

#set temperature limit, degrees C 
undervolt --temp-bat 55

#short power limit
undervolt -p2 25 0 

#long power limit
undervolt -p1 15 60

#give notification
echo "Battery-powered undervolting profile is applied"

#kde users only:
kdialog --title "Surface Undervolting" --passivepopup "Battery-powered profile is applied" 5