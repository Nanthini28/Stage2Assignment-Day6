#!/bin/bash -x
function deg2cel(){
	deg=$1;
	min_temp=0;
	max_temp=100;
	cel=`expr "($deg-32)*5/9" | bc -l`
	if [ $((`echo $cel $min_temp $max_temp | awk '{if ($1 -ge $2 && $1 -le $3) print 1}'` )) ]
	then
		echo "$cel"
		return
	else
		echo "celcius out of range 0-100"
		return
	fi
}
function deg2fah(){
	deg=$1;
	min_temp=32;
	max_temp=212;
	fah=`expr "($deg*9/5)+32" | bc -l`
	if [ $((`echo $fah $min_temp $max_temp | awk '{if ($1 -ge $2 && $1 -le $3) print 1}'` )) ]
	then
		echo "$fah"
		return
	else
		echo "Fahrenite out of range 32-212"
		return
	fi
}
