#!/bin/bash
#每隔5分钟减产指定的用户是否登陆系统 用户名从终端输入 登陆了则显示信息
read -p "Please input the userName: " user
while :
do
if who | grep -qw $user
then
echo $user login
else
echo $user not login
fi
sleep 300
done
