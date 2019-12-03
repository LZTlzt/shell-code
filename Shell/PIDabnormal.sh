#!/bin/bash
ps -aux | awk '/[0-9]/ {print $2}' | while read PID
do
res = `find /proc/ -maxdepth 1 -type d -name "$PID"`
if [ -z $res ]
then
ehco "$PID abnormal!"
fi
done
