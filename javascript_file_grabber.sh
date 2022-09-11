#!/bin/bash
#
# usage: jfg.sh <input_file>
# the script will look for all files with javascript extensions with the file then sort them alphabetically, removing duplicates
#
grep -oP '[^\/]*\.js' $1 | sort --unique
