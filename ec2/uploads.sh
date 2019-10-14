#!/bin/sh

. ../.env
scp -r ../../settings/docker-blog/* ${BLOG_IP}:~/blog/
