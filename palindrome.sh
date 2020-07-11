#!/bin/bash -x
function palindrome(){
temp=$num
rev=0
while [ $num -gt 0 ]
do
	rem=$(( $num % 10 ))
	rev= $(($(( $rev*10 )) + $rem ))
	temp= $(( $num/10 ))
done
if [ $temp -eq $rev ]
then
	echo "$1 is pali"
else
	echo "$1 is not pali"
fi
}
read -p "enter the value:" Value1
read -p "enter the value:" Value2
palindrome $value1
palindrome $value2
