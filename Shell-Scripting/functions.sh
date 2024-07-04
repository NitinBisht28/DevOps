#!/bin/bash



square() {
	sq=0
	read -p "Enter the number" num
	sq=$(( num * num))
	echo "the square is : $sq"
	
}

square
