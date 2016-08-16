#!

number_of_logs=$1

if [ -z "$number_of_logs" ]
then
    number_of_logs=40
fi

while :
do
    clear
    git --no-pager log `git rev-parse HEAD` -n $number_of_logs --graph --pretty=oneline --abbrev-commit --decorate
    sleep 1
done
