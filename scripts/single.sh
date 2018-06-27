#!/bin/bash
printf "Host: "
read -r host
printf "Port: "
read -r port
sh macro_scripts/clear.sh
proxycheck -vv $host:$port -c chat:send:expect -d 108.64.38.55:80
