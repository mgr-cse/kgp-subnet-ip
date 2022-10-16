#!/bin/bash

while :; do
    IP=`traceroute www.google.com -m 3 | awk '{if($1==3) {print $2}}'`
    echo $IP > ip-addr
    git add -A
    COMMIT_ID=`uuidgen`
    git commit -m "$COMMIT_ID"
    git push -u origin master
    sleep 1
done