#!/bin/sh

#automated script to asjust undervoltage for the Microsoft Surface device
#============= wall outlet  operation ==============
#set undervoltage 100mV on CPU and 50mV on GPU
sudo undervolt --core 0 --cache 0 --gpu 0 

#set temperature limit, degrees C 
sudo undervolt --temp 70

#goal of the wall outlet script is to maximize system's performance 
#short power limit
sudo undervolt -p2 25 30 

#long power limit
sudo undervolt -p1 15 60  

#================give notification=====================#
echo "AC-powered undervolting profile is applied"

#kde users only:
kdialog --title "Surface Undervolting" --passivepopup "AC-powered profile is applied" 5

