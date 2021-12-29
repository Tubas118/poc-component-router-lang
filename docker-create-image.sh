#!/bin/bash

# -----------------------------------------------------------------------
# Change as needed
MAP_HOST_PORT=80

# -----------------------------------------------------------------------
# Nothing below this point should need to be changed.
PRJ_NAME=`echo ${PWD##*/}`

echo "Project: ${PRJ_NAME}"

# -----------------------------------------------------------------------
IMAGE_LATEST=nginx-${PRJ_NAME}:latest
IMAGE_ROOT=nginx-${PRJ_NAME}-

IMAGE_COUNT=`docker ps -a | grep -c ${IMAGE_ROOT}`
IMAGE_NAME=${IMAGE_ROOT}$((IMAGE_COUNT+1))
echo ${IMAGE_NAME}

# -----------------------------------------------------------------------
echo "Start build"
docker build -t ${IMAGE_NAME} -t $IMAGE_LATEST .
echo "End build"
echo ""
echo "Start create"
docker create --name ${IMAGE_NAME} -p ${MAP_HOST_PORT}:80 $IMAGE_LATEST
echo "End create"
echo ""
