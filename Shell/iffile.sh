#!/bin/bash
#判断/bin目录下date文件是否存在
if [ -f /bin/date ]
then
echo "/bin/date file exit."
else
echo "/bin/date not exit"
fi
