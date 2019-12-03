#!/bin/bash
#$0 脚本可以接受选项[i,I]，完成以下任务，当用户使用-i选项时，显示指定网卡的IP地址；使用-I时，显示指定IP所属网卡
#当用户使用除 [i|I]选项时，显示[-i interface | -I ip]此信息
# 当用户指定信息不符合时，显示错误
ip add | awk -F ":" '$1 ~ /^[1-9]/ {print $2}' | sed 's/ //g' > .tmp/eths.txt
[ -f /tmp/eth_ip.log ] && rm -f /tmp/eth_ip.log

