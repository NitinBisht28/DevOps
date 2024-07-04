#!/bin/bash
#
#returning values from a function
#
sum(){
	total=$($1+$2)
	return $total
}


sum 3 4
result=$?
echo "the sum is: $result

