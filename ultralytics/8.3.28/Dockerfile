FROM ultralytics/ultralytics:8.3.28
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends vim openssh-server && \
    pip3 install --upgrade pip && \
    pip3 install --no-cache lapx

RUN echo "source /opt/conda/bin/activate" >> ~/.bashrc
RUN rm -rf /opt/conda/bin/python3.1 /opt/conda/lib/python3.1

WORKDIR /ultralytics
RUN pip3 install .
 
WORKDIR /workspace
ENTRYPOINT ["bash", "-c", "service ssh restart && bash"]
