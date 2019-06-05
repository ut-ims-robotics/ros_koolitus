#!/bin/bash

echo -ne "Sisesta roboti number [1-15] ja vajuta Enter: "
read CLEARBOT_NUMBER
export ROS_MASTER_URI=http://192.168.200.$CLEARBOT_NUMBER:11311

echo -e "---------------------------------------------"
echo -e "ROS_MASTER_URI  =  $ROS_MASTER_URI"
echo -e "ROS_IP          =  $ROS_IP"
echo -e "---------------------------------------------"
echo "Valmis! Siin aknas on nüüd ROS peremees Clearbot-$CLEARBOT_NUMBER"
