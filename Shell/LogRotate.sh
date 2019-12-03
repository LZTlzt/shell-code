#!/bin/bash
function e_df()
{
[ -f $1 ] && rm -f $1
}

for i in `seq 5 -1 2`
do
i2=$[$i-1]
e_df /data/1.log.$i
if [ -f /data/1.log.$i2 ]
then
mv /data/1.log.$i2 /data/1.log.$i
fi
done
e_df /data/1.log.1
mv /data/1.log /data/1.log.1
