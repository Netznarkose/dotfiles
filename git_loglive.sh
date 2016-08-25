#!/bin/bash
 number_of_logs=$1
 if [ -z "$number_of_logs" ]
 then
     number_of_logs=40 # set number of logs to 40 unless they are specified 
 fi
while :
do
    clear
    git --no-pager log -n $number_of_logs --graph --pretty=oneline --abbrev-commit --decorate --all 
    sleep 1
done

 # while :
 # do
 #     clear
 #     git --no-pager log `git rev-parse HEAD` -n $number_of_logs --graph --pretty=oneline --abbrev-commit --decorate --all
 #     sleep 1
 # done

