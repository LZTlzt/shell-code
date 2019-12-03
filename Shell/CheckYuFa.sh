#!/bin/bash
#检查脚本是否有语法错误,有错误显示错误，然后提示用户输入q退出脚本，输入其他内容则直接用vim打开该shell脚本 
# 检查shell脚本有无错误命令是 sh -n xx.sh
sh -n $1 2>/tmp/err
if [ $? -eq 0 ]
then
echo "The script is OK!"
else
cat /tmp/err
read -p "Please input Q/q to exit, or others to edit it by vim. " n
if [ -z $n ]
then
vim $1
exit
fi
if [ $n == "q" -o $n == "Q" ]
then
exit
else
vim $1
exit
fi
fi
