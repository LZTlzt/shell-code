#!/bin/bash
# 程序执行时根据当前系统时间向用户输出问候，半夜到中午为早晨 下午6点到半夜为晚上
time=`date +%H`
if [ $time -ge 0 ] && [ $time -lt 12 ]
then
echo "Good Morning"
elif [ $time -ge 12 ] && [ $time -lt 18 ] 
then
echo "Good Afternoon"
else
echo "Good Evening"
fi
