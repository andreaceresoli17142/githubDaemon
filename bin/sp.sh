#!/bin/bash
until ping -c1 google.com; do sleep 1; done;

echo "connected"

cd $(dirname "$0")

USER_HOME=$(cat usrHome)

# mkdir $USER_HOME/Documents/markdown 2>/dev/null

cd $USER_HOME/Documents/markdown

sudo git pull origin master

# /usr/local/bin/anp/gitp.sh -f
echo "succ"
# i3-msg `exec i3-nagbar -twarning -m "successfully pushed notes"`
