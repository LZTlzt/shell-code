#!/bin/bash
read -p "输入一串数字:" num
v=`echo $num|sed 's/[0-9]//g'`
if [ -n "$v" ]
then
echo "输入纯数字"
exit
fi
echo $num | sed -r '{:number;s/([0-9]+)([0-9]{3})/\1,\2/;t number}'
