#!/usr/bin/env bash
echo 'Passed argumnts' $@
$1 $2
status="$?"
if [ "$status" -eq "0" ]; then
	echo 'Programm success'
	exit 0
	
elif [ "$status" -eq "1" ]; then
	echo 'Programm failed'
	exit 1
fi
echo "Programm status undefined: $status"
exit 0
