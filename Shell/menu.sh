#!/bin/bash
#实现简单的弹出式菜单功能
function message()
{
echo "0. w"
echo "1. ls"
echo "2. quit"
read -p "Please input parameter: " Par

}

message
while [ $Par -ne '2' ]
do
case $Par in
0)
w
;;
1)
ls
;;
2)
exit
;;
*)
echo "Unkown command"
;;
esac
message
done
