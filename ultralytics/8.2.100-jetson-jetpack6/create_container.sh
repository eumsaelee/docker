#!/bin/bash
NAME='ultralytics-8.2.100-jetson-jetpack6'
DIST='eumsaelee/ultralytics:8.2.100-jetson-jetpack6'
WORKSPACE=$(dirname "$(realpath "$0")")/workspace
docker run -it --runtime nvidia --ipc=host --net=host \
    --volume $WORKSPACE:/workspace \
    --name $NAME $DIST /bin/bash
