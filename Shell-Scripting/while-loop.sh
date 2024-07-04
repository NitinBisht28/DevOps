#!/bin/bash

while true
do
	read -p "ENTER A NUMBER" num
	sum=$((sum+$num))
	echo "the number entered is : $num"
	echo "now the sum is: $sum "
done




