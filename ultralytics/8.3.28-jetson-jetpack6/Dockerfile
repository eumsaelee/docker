FROM ultralytics/ultralytics:8.3.28-jetson-jetpack6
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-mark manual opencv-licenses && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        vim \
        openssh-server \
        supervisor && \
    pip3 install --upgrade pip && \
    pip3 install --no-cache lapx

WORKDIR /ultralytics
RUN pip3 install .

WORKDIR /workspace
ENTRYPOINT ["bash", "-c", "service ssh restart && supervisord -c /etc/supervisor/supervisord.conf && bash"]
