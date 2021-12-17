#!/usr/bin/env bash
#untuk run
rm -rf logremot.txt
screen -dmS remot -L -Logfile /logremot.txt ssh - .ssh/remot -o StrictHostKeyChecking=no -R 80:localhost:80 localhost.run
./bot
host=$(cat /logremot.txt|grep tunneled|awk '{print $1}')
echo "Host: $host"
