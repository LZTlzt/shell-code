#!/bin/bash
#N 追加下一个输入到模式空间，两次用了表示把当前行的后两行都追加到模式空间
sed 'N;N;s/\n/ /g' 1.txt
#s将\n换行符换成空格
