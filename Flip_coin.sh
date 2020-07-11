#!/bin/bash
h=1
t=0
f=0
while [ $f ]
do
	Randomcheck=$(( RANDOM%2 ))
	if [ $Randomcheck -eq 1 ]
	then
		h= expr $h + 1
	else
		t= expr $t + 1
	fi
	f= expr $f + 1
if [[ ($h -eq 11) || ($t -eq 11) ]]
then
	break
else
	continue
fi
done
