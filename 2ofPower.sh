#!/bin/bash -x
read -p "enter the power:" power
sum=2
for ((i=1; $i<=$power; i++))
do
	sum=$(($sum*2))
done
echo $sum
