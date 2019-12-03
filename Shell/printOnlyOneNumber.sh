#!/bin/bash
f=/etc/passwd
line=`wc -l $f | awk '{print $1}'`
for l in `seq 1 $line`
do
n=i`sed -n "$l"p $f | grep -0 '[0-9]'` | wc -c;
if [[ $n == 1 ]]
then
sed -n "$l"p $f
fi
done

