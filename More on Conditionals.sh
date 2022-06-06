read one
read two
read three

if [ $one -eq $two -a $two -eq $three ]
then 
    echo "EQUILATERAL"
elif [ $one -eq $two -o $two -eq $three -o $three -eq $one ]
then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi