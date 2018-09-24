#!/bin/bash

# Collect username, ssh, & enable passwords *** use -r to hide input commands
echo "Enter the username: "
read -e userecho "Enter the SSH password: "
read -e passwordecho "Enter the Enable password: "
read -e enable

# Must have a seperate device list that contains the IP addresses of the devices you wish to loop through
# Open device list & send the collected information to script

for device in `cat deviceList`; do
./script.sh $device $user $password $enable ;
done

