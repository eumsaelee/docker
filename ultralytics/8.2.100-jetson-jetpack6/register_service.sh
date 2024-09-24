#!/bin/bash
NAME=ultralytics-8.2.100-jetson-jetpack6.service
sudo cp $NAME /etc/systemd/system/$NAME
sudo systemctl daemon-reload
sudo systemctl enable $NAME
sudo systemctl start $NAME
