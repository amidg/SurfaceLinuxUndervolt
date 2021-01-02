#!/bin/sh

#automated script to asjust undervoltage for the Microsoft Surface device
#============= wall outlet  operation ==============
#set undervoltage 130mV on CPU and 100mV on GPU
undervolt --core -130 --cache -130 --gpu -100 

#set temperature limit, degrees C 
undervolt --temp 60

#goal of the wall outlet script is to maximize system's performance 
#short power limit
undervolt -p2 25 30 

#long power limit
undervolt -p1 15 60  

#================give notification=====================
echo "AC-powered undervolting profile is applied"

#kde users only:
kdialog --title "Surface Undervolting" --passivepopup "AC-powered profile is applied" 5

