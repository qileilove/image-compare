#!/usr/bin/env bash
DOCKERFILE="$(dirname $0)/../Dockerfile"
docker build --rm -t=image-compare-test -f $DOCKERFILE .
registry=$(echo $REPOSITORY_URL | awk -F '.' '{print $1}')
region=$(echo $REPOSITORY_URL | awk -F '.' '{print $4}')
eval $(aws ecr get-login --registry-ids $registry --region $region)
