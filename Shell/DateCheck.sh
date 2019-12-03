#!/bin/bash
read -p "Please input a date: " t
d=`date +%Y%m%d`
if [[ $t -eq $d ]]
then
echo "$t"
else
echo "Illegal date"
fi
