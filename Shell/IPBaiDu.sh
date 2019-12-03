#!/bin/bash
while true
do
ping -c 2 -w 100 www.baidu.com
if [[ $? != 0 ]]
then
echo "ping fail"
sleep 3
else
echo "ping Ok"
fi
done
