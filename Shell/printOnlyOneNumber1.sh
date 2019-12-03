#!/bin/bash
for i in `cat /etc/passwd`
do
n=`echo $i | sed 's/[^0-9]//g' | wc -c`
if [ $n -eq 1 ]
then
echo $i
else
continue
fi
done
