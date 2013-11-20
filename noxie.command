#!/bin/bash

cd "$(dirname "$0")"

sudo npm install

echo "Please select which tasks Noxie should run"

PS3='Choose the task number and hit enter:'

options=(
	"Run Dev task"
	"Run Build task"
	"Quit"
)

select opt in "${options[@]}"

do
	case $opt in
		"Run Dev task")
			grunt
			;;
		"Run Build task")
			grunt build
			;;
		 "Quit")
			killall Terminal
			;;
		*) echo Invalid option;;
	esac
done
