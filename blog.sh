#!/bin/sh

. ./.env
ssh ${BLOG_IP} -i ~/.ssh/wordpress_admin.pem
