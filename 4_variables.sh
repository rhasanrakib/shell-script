#!/bin/bash
a="This is a"
echo $a
echo 'this will print a string $a' #string
echo "this will print the variable $a" #print variable
#a = "This is also a" # This will not find, because space

#Parameter Expansion {}
echo ${a}
#Repalce This with A
echo ${a/This/A}

#Substring from a variable
# This will return only the first 7 characters of the value
Lenght=7
echo ${a:0:Lenght}
# This will return the last 5 characters (note the space before -5)
echo ${a: -5}
#Sting length
echo ${#a}
#assign variable
otherVariable=$a;
echo ${otherVariable}
# Indirect expansion
otherVariable="Variable";
echo ${!otherVariable}

#Null value
a=
echo $a

#Empty string
a=''
echo $a

#Set default value if variable is missing or empty or null
# Note that it only returns default value and doesn't change variable value.
echo ${newEmptyVariable:-"Default Value if newEmptyVariable is missing or empty"}

#Declare an Array
arr=(one two three)
#print the firsr element of arr
echo $arr
#print 2nd element
echo ${arr[1]}
#print all element
echo ${arr[@]}

#print length of array
echo ${#arr[@]}

#print length of character of 1st index array
echo ${#arr[1]}

#variable:strat:howMany
# print from 1st index and the the immediate next 
echo ${arr[@]:1:2}
