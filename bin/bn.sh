#!/bin/bash

cd $(dirname "$0")

USER_HOME=$(cat usrHome)

mkdir $USER_HOME/Documents/markdown 2>/dev/null

cd $USER_HOME/Documents/markdown

today=`date +"%d/%m/%Y %H:%M "`
cdd=$(pwd)
sudo git add .
sudo git commit -m "automated commit $today"
sudo git push -q origin master
# su - andrea -c "cd $cdd;git add .; git commit -m \"automated commit $today\""
# su - andrea -c "cd $cdd;git push -q origin master"
# /usr/local/bin/anp/gitp.sh
echo "succ"
# i3-msg `exec i3-nagbar -twarning -m "successfully pushed notes"`
