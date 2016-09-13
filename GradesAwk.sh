#!/bin/bash
#Justin Visher

if [ "$#" -ne 1 ]
	then echo "Usage: GradesAwk.sh filename"
	exit 1
fi


awk ' { sum = $4 + $5 + $6 ; avg = sum / 3 ; print int( avg ), "[" ,$1 ,"]", $3, ",", $2 } ' "$1" | sort -k 5,5 -k 7,7 -k 3,3

