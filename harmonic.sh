#!/bin/bash
sum=0
read -p "Enter the n :" n
for (( i=2; i<=n; i++ ))
do
 Div=`echo $i | awk '{ print $1/$2 }'`
 sum=`echo $Div $sum | awk '{ print $2=$1+$2 }'`
done
echo sum = $sum
