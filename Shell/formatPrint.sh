#!/bin/bash
read -p "输入一串数字:" num
flag=`echo $num|sed 's/[0-9]//g'`
#如果$flag长度非零 为真
if [ -n "$flag" ]
then
echo "输入一串纯数字"
exit
fi
length=${#num}
echo "$length"
len=0
output=''
for i in $(seq 1 $length)
do
#let len++
len=$[$len+1]
#if [ $len -eq 3 ]
if [[ $len == 3 ]]
then
output=','${num:$[0-$i]:1}$output
echo "$len"
len=0
else
output=${num:$[0-$i]:1}$output
fi
done

if [[ -n $(echo $output | grep '^,') ]]
then
echo ${num:1}
else
echo $output
fi

# tuichu 
