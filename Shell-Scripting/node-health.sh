#!/bin/bash

##################################
# Author: Nitin 
# Date: 24/june/2024
#
#This Script outputs the node health
#
#version: v1
##################################
set -x #debug-mode`

#echo "Print Disk space:"
df -h # here, -h stands for 'Human-Readable'. 

#echo "Print the memory:"
free -g # here, -g stands for 'memory usage in gigabytes{gb}'.

#echo "print the cpu's:"
nproc

ps -ef | grep "daemon" | awk -F" " '{print $2}'

