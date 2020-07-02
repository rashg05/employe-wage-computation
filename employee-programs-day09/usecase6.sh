#!/bin/bash -x
empDayHrsFullTime=8
empDayHrsHalfTime=4
perHrsRate=20;
read -p "enter the days of months that employee present" days
if [ $((RANDOM%2)) -eq 1 ]
then
	while(( $days <= 20 || $empDayHrsFullTime <= 100))
	do
		dayWage=$(( ($empDayHrsFullTime*$days)*$perHrsRate ))
		echo $dayWage;
		days=$(( $days+1 ))
		empDayHrsFullTime=(( $empDayHrsFullTime+8 ))
	done
else
	while(( $days <= 20 || $empDayHrsHalfTime <= 50))
        do
        	partTimeWage=$(( ($empDayHrsHalfTime*$days)*$perHrsRate ))
		echo $partTimeWage;
		days=$(( $days+1 ))
	        empDayHrsHalfTime=$(( $empDayHrsHalfTime+4 ))
        done

fi
