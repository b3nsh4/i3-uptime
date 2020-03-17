#!/bin/bash
#made by bensh4
#
#                 ,--.  ,--.                        ,--.,----.
#,--.,--. ,---. ,-'  '-.`--',--,--,--. ,---. ,-----.`--''.-.  |
#|  ||  || .-. |'-.  .-',--.|        || .-. :'-----',--.  .' <
#'  ''  '| '-' '  |  |  |  ||  |  |  |\   --.       |  |/'-'  |
# `----' |  |-'   `--'  `--'`--`--`--' `----'       `--'`----'
#        `--'
#
since=$(uptime -s | awk '{print $2}')
total=$(uptime | awk '{print $3}' | sed 's/\,//')
since_sed=$(echo ${since} |  sed 's/:[0-9].*//' | sed 's/0//')

if (( $since_sed > 12 ))  
then
	echo $total "min" " " $since "pm"
else
	echo $total "min" " " $since "am"

fi
