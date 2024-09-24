#!/bin/bash
NAME=ultralytics-8.2.100
DIST=eumsaelee/ultralytics:8.2.100
WORKSPACE=$(dirname "$(realpath "$0")")/workspace
docker run -it --gpus all --ipc=host --net=host \
    --volume $WORKSPACE:/workspace \
    --name $NAME $DIST /bin/bash
