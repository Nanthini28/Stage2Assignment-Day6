#!/bin/bash 
read -p "enter the number:" n
low=0
high=100
f=0
while [ $f -eq 0 ]
do
	mid=$(((($low + $high))/2))
	if [ $n -eq $mid ]
	then
		echo "number is $mid"
		f=1;
	elif [ $n -lt $mid ]
	then
		high=$(($mid-1))
	else
		low=$(($mid+1))
	fi
done   
