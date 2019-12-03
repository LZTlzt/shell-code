#!/bin/bash
#将当前目录下的.txt文件更名为.doc文件
find . -type f -name ".txt" > /tmp/txt.list
for f in `cat /tmp/txt.lis`
do
n=`echo $f | sed -r 's/(.*)\.txt/\1/'`
echo "mv $f $n.doc"
done
