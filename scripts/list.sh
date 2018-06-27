#!/bin/bash
printf "List: "
read -r list
printf "Output File: "
read -r output_file
sh macro_scripts/clear.sh
echo "This could take a while, get some coffee... "
while :
do
  if [ -s $list ]; then
    proxycheck -vv -d 64.111.113.13:80 -c chat:send:expect -i $list 2>&1 | tee logs/log.txt
    sh scripts/format.sh $output_file $list
  else
    break
  fi
done
sh macro_scripts/clear.sh
echo "Output stored to $output_file!"
