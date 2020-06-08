#!/bin/sh

. ./.env
ssh ec2-user@${BLOG_IP} -i ~/.ssh/release_story.pem
