#!/bin/bash
read -p "输入一串数字: " num
v=`echo $num | sed 's/[0-9]//g'`
if [ -n "$v"]
echo "请输入纯数字： "
exit
fi
len=${#num}
length=0
output=''
for i in $(seq 1 $len)
do
length=$[$length+1]
if [ $liength -ne 3 ]


