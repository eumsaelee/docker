#!/bin/bash
NAME=ultralytics-8.3.28
DIST=eumsaelee/ultralytics:8.3.28
WORKSPACE=$(dirname "$(realpath "$0")")/workspace
docker run -it --gpus all --ipc=host --net=host \
    --volume $WORKSPACE:/workspace \
    --name $NAME $DIST /bin/bash
