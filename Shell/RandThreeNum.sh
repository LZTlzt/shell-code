#!/bin/bash
get_a_num()
{
n=$[$RANDOM%10]
echo $n
}

get_number()
{

for i in 1 2 3
do
a[$i]=$(get_a_num)
done

echo ${a[@]}
echo ${a[*]}

}


if [ -n "$1" ]
then
m=`echo $1 | sed 's/[0-9]//g'`
if [ -n "$m" ]
then
echo "Usage bash $0 n, n is a number, example: bash $0 5"
exit
else
for i in `seq 1 $1`
do
get_number
done
fi
else
get_number
fi 

