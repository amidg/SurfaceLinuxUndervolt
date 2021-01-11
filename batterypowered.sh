#!/bin/sh

#automated script to asjust undervoltage for the Microsoft Surface device
#============= battery operation ==============
#set undervoltage 130mV on CPU and 100mV on GPU
sudo undervolt --core -100 --cache -100 --gpu -50 

#set temperature limit, degrees C 
sudo undervolt --temp-bat 55

#short power limit
sudo undervolt -p2 25 1 

#long power limit
sudo undervolt -p1 15 60

#==============================give notification========================
echo "Battery-powered undervolting profile is applied"

#kde users only:
kdialog --title "Surface Undervolting" --passivepopup "Battery-powered profile is applied" 5
