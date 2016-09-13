#!/bin/bash

if [ "$#" -ne 1 ]
	then echo "Usage: Grades.sh filename"
	exit 1
fi

while read id first last score1 score2 score3
do
	avg=$(echo "($score1+$score2+$score3)/3" | bc)
	echo $avg "["$id"]" $last"," $first
done < "$1" | sort -k 3,3d -k 4,4d -k 2,2g
