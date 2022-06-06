#!/bin/bash
read X
read Y

if [ $X = $Y ] 
then
    echo 'X is equal to Y'
elif [ $X < $Y ]
then
    echo 'X is less than Y'
else
   echo 'X is greater than Y'
fi

# = and == are for string comparisons
# -eq is for numeric comparisons
# -eq is in the same family as -lt, -le, -gt, -ge, and -ne
