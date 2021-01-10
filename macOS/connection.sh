#!/bin/sh

. ../.env
ssh ec2-user@${MAC_IP} -i ~/.ssh/mac-instance-key.pem
