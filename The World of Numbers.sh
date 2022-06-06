#!/bin/bash
read num1
read num2
echo $(($num1+$num2))
echo $(($num1-$num2))
echo $(($num1*$num2))
num3=$(($num1/$num2))
echo $num3
