#!/bin/bash
start=100
end=200
count=0
bet=0
loss=0

while [ $start -ne $end ] && [ $start -ne 0 ]
do
rand=$(( RANDOM%2 ))
	if [ $rand -eq 1 ]
	then
		start=$(($start + 1))
		count=$((count+1))
	else
		start=$(($start - 1))
		((loss++))
	fi
bet=$(($bet +1))
done
echo "Total amount: $Start"
echo "No of loss: $loss"
echo "No of won: $count"
echo "No of bets: $bet"
