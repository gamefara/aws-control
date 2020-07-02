#!/bin/sh

. ../.env
ssh ec2-user@${GROWI_IP} -i ~/.ssh/release_story.pem
