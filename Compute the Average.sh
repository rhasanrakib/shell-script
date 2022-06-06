#!/bin/bash
read test
sum=0
for ((i=1;i<=test;i++));do
    read num
    sum=$((sum+num))
done

VAR=$(echo "scale=4; $sum/$test" | bc)
if [ $VAR -eq 0 ]
then
    echo 0
else
    printf %.3f $VAR
fi