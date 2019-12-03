#!/bin/bash
# 把192.168.0.0/24网段在线的ip列出来
ips="10.206.139."
for i in `seq 1 254`
do
ping -c 2 $ips$i > /dev/null 2>/dev/null
if [ $? -ne 0 ]
then
echo "echo $ips$i is online "
else
echo "echo $ips$i is not online "
fi 
done
