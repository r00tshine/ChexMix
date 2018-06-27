#!/bin/bash
grep "(200)" logs/log.txt 2>&1 | tee logs/log2.txt
sed 's/hc://' logs/log2.txt 2>&1 | tee logs/log3.txt
sed 's/: HTTP request successeful (200)//' logs/log3.txt 2>&1 | tee logs/log4.txt
fgrep -vf logs/log4.txt $2 > logs/log5.txt
cat logs/log5.txt > $2
cat logs/log4.txt >> $1
sh macro_scripts/remove_logs.sh
