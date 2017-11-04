#!/bin/bash
if [ $# -gt 0 ]; then
	echo
	echo Removing trailing whitespace in $1
	echo
	find $1 -type f -iname '*.py' -exec gsed -i 's/[[:blank:]]*$//' '{}' ';'
else
	echo
	echo Usage:
	echo remove-trailing-whitespace [target-dir]
	echo
fi
