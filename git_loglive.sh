#!/bin/bash
 number_of_logs=$1
 if [ -z "$number_of_logs" ]
 then
     number_of_logs=10 # set number of logs to 10 unless they are specified 
 fi
 while :; do
   output=$(git --no-pager log -n $number_of_logs --graph --pretty=oneline --abbrev-commit --decorate --all --color=always)
   clear
   echo "$output" 
   sleep 1
done
