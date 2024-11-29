#!/bin/bash
NAME='ultralytics-8.3.28-jetson-jetpack4'
DIST='eumsaelee/ultralytics:8.3.28-jetson-jetpack4'
WORKSPACE=$(dirname "$(realpath "$0")")/workspace
docker run -it --runtime nvidia --ipc=host --net=host \
    --volume $WORKSPACE:/workspace \
    --name $NAME $DIST /bin/bash
