#!/bin/bash
#Justin Visher

if [ "$#" -ne 1 ]
	then echo "Usage: RegexAnswers.sh filename"
	exit 1
fi

#1
grep '[0-9]$' "$1" | wc -l

#2
grep '^[^aeiouAEIOU]' "$1" | wc -l

#3
egrep '^[a-Z]{12}$' "$1" | wc -l

#4
grep '^[0-9]\{3\}[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}$' "$1" | wc -l

#5
grep '^[3][0][3][ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}$' "$1" | wc -l

#6
grep '^[aeiouAEIOU].*[0-9]$' "$1" | wc -l

#7
grep '^.*geocities.com$' "$1" | wc -l

#8
egrep '^[a-Z0-9._%+-]+@[a-Z0-9.-]+\.[a-Z]{2,}$' "$1" | wc -l
