FROM ultralytics/ultralytics:8.3.28-jetson-jetpack4
ENV DEBIAN_FRONTEND=noninteractive

#apt-mark manual opencv-licenses
RUN apt-get update && \
    apt-get install -y --no-install-recommends vim openssh-server && \
    pip3 install --upgrade pip && \
    pip3 install --no-cache lapx

WORKDIR /ultralytics
RUN pip3 install .

WORKDIR /workspace
ENTRYPOINT ["bash", "-c", "service ssh restart && bash"]
