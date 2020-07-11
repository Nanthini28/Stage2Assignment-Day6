#!/bin/bash
read -p "enter the number" num
for (( i=2; i<=$num; i++ ))
do
var=$(($num%$i))
	if [ $var -eq 0 ]
	then
		echo $i
	fi
done
