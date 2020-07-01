#!/bin/bash -x
if [ $((RANDOM%2)) -eq 1 ]
then
	echo "Rashmi is present"
else
	echo "Rashmi is absent"
fi
