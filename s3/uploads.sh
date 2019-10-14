#!/bin/sh

. ../.env
ORIGIN_IMAGE_FOLDER=./images
UPLOAD_IMAGE_FOLDER=${ORIGIN_IMAGE_FOLDER}/resized

mkdir -p ${ORIGIN_IMAGE_FOLDER}
mkdir -p ${UPLOAD_IMAGE_FOLDER}

FIND_IMAGE_LIST=`\find ${UPLOAD_IMAGE_FOLDER} -type f`
if [ `$FIND_IMAGE_LIST | wc -l` = 0 ]; then
    echo No files;
    exit
fi

S3_UPLOAD_IMAGE_FOLDER=s3://${BLOG_IP}/wp-content/uploads/images/

# S3へ画像移動
for file in ${FIND_IMAGE_LIST}; do
    aws s3 mv ${file} ${S3_UPLOAD_IMAGE_FOLDER} --cache-control 31530000
done

echo "s3 Upload finish"

