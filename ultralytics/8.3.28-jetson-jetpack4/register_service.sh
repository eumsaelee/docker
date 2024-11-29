#!/bin/bash
NAME=ultralytics-8.3.28-jetson-jetpack4.service
sudo cp $NAME /etc/systemd/system/$NAME
sudo systemctl daemon-reload
sudo systemctl enable $NAME
sudo systemctl start $NAME
