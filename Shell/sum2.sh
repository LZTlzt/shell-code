#!/bin/bash
sum=0
i=1
for i in $(seq 100)
do 
let sum=sum+i
done
echo $sum
