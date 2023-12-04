#!/bin/sh
  
a=$1
n1=$2
n2=$3
 
if [ "$1" == "-i" ]
then
echo "Choose operation ************"
echo "  1)Add -a n1 n2"
echo "  2)Multiply -m n1 n2"
echo "  3)Substract -s n1 n2"
echo "  4)Divide -d n1 n2"
echo "  5)Negate -n n1"
 
read n
if [ $n == 5 ]
then
        echo Enter number 1
        read n1
else
        echo Enter 2 numbers
        read n1
        read n2
fi
 
case $n in
1) echo "Addition"
        a="-a";;
2) echo "Multiplication"
        a="-m";;
3) echo "Substraction"
        a="-s";;
4) echo "Division"
        a="-d";;
5) echo "Negation"
        a="-n";;
esac
fi
 
if [ "$a" == "-a" ]
then
        bc <<< "scale=4; $n1+$n2"
elif [ "$a" == "-m" ]
then
        bc <<< "scale=4; $n1*$n2"
elif [ "$a" == "-s" ]
then
        bc <<< "scale=4; $n1-$n2"
elif [ "$a" == "-d" ]
then
        bc <<< "scale=4; $n1/$n2"
elif [ "$a" == "-n" ]
then
        bc <<< "scale=4; -$n1"
fi
