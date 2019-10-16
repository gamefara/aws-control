#!/bin/sh

if [ $# != 1 ]; then
    exit;
fi

EC2_IP=$1
scp -r ./files/* ${EC2_IP}:~/
