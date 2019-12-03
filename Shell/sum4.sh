#!/bin/bash
sum=0
for i in $(seq 100)
do 
sum=`expr $i + $sum`
done
echo $sum
