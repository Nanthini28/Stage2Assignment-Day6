#!/bin/bash -x
function palindrome() {
temp=$num
rev=0
while [ $num -gt 0 ]
do
        rem=$(( $num % 10 ))
        rev=$(($(( $rev*10 )) + $rem ))
        temp=$(( $num/10 ))
done
if [ $temp -eq $rev ]
then
	PrimeNumber $rev
	check=$?
	echo $check
else
	echo "not palindrome number"
fi
}

function Primenumber() {
flag=1
for (( i=2; i<=$(( $rev/2 )); i++ ))
do
	if [ $(( $rev % $i )) -eq 0 ]
	then
		flag=0
		echo "not prime"
	fi
done
}        
