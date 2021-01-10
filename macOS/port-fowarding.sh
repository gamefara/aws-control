#!/bin/sh

. ../.env
ssh ec2-user@${MAC_IP} -i ~/.ssh/mac-instance-key.pem -L 5900:localhost:5902
