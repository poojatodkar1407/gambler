#!/bin/bash -x

count=1
ispartTime=1
isFullTime=2
empHrPerDay=50
totalHrs=0
empPerDaySalary=20
while [ $empHrPerDay != 0 ]
do
		randomCheck=$(( RANDOM % 3 ))
                case $randomCheck in
                $isFullTime)
                         empHrs=8
			 totalhrs=$(( $totalHrs + $empHrs ))
                         empHrPerDay=$(( $empHrPerDay - 1 ))
                        ;;
                $ispartTime)
                        empHrs=4
			 totalhrs=$(( $totalHrs + $empHrs ))
                         empHrPerDay=$(( $empHrPerDay - 1 ))
                        ;;
                *)
                        empHrs=0
			 totalhrs=$(( $totalHrs + $empHrs ))
                        empHrPerDay=$(( $empHrPerDay - 1 ))
                        ;;
		esac;
salary=$(( $salary + $empHrs * $empPerDaySalary ))

done


