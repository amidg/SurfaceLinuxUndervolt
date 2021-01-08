#!/bin/sh

#automated script to asjust undervoltage for the Microsoft Surface device
#============= battery operation ==============
#set undervoltage 130mV on CPU and 100mV on GPU
sudo undervolt --core -130 --cache -130 --gpu -100 

#set temperature limit, degrees C 
sudo undervolt --temp-bat 40

#short power limit
sudo undervolt -p2 5 0.01 

#long power limit
sudo undervolt -p1 1 60
sudo undervolt --lock-power-limit

#==============================give notification========================
echo "Battery-powered undervolting profile is applied"

#kde users only:
kdialog --title "Surface Undervolting" --passivepopup "Ultra-Low Power mode" 5
