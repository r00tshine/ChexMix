#!/bin/bash

echo "Do you want to input a list or a single proxy?"
printf "Type 'list' or 'single': "
read -r input_type

if [ "$input_type" = "list" ]; then
	sh scripts/list.sh
elif [ "$input_type" = "single" ]; then
	sh scripts/single.sh
else
	echo "'$input_type' wasn't an option. Make sure you typed 'list' or 'single'."
        echo "Remember, it is case sensitive "
fi
