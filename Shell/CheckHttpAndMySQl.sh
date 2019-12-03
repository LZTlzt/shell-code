#!/bin/bash
if_install() 
{
n=`rpm -qa | grep -cw "$1"`
if [ $n -eq 0 ]
then
echo "$1 not install"
yum install -y $1
else
echo "$1 installend"
fi
}

if_install httpd
if_install mysql-server
chk_ser()
{
p_n = `ps -C "$1" --no-heading | wc -l`
if [ $p_n eq 0 ]
then
ech0 "$1 not start"
else
echo "$1 started"
fi
}



