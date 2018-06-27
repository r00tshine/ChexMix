#!/bin/bash
sh macro_scripts/clear.sh
sh macro_scripts/welcome_msg.sh
if ! type "proxycheck" > /dev/null; then
	echo "It appears you are missing some dependencies, let me install them for you!"
	printf "Press any key to continue... "
        read
	sudo apt-get install proxycheck
	sh macro_scripts/clear.sh
        sh macro_scripts/welcome_msg.sh
	sh scripts/run.sh
else
	sh scripts/run.sh
fi
