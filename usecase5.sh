#!/bin/bash -x
empDayHrsf=8
empDayHrs=4
perHrsRate=20;
read -p "enter the days of months that employee present" days
if [ $((RANDOM%2)) -eq 1 ]
then
	dayWage=$(( ($empDayHrs*$days)*$perHrsRate ))
	echo $dayWage;
else
        partTimeWage=$(( ($empDayHrs*$days)*$perHrsRate ))
	echo $partTimeWage;
fi
