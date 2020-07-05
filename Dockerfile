FROM python:3.6.7             
RUN apt-get upgrade -y && \
    apt-get update -y && \
    pip install --upgrade pip && \
    apt-get install -y libgl1-mesa-dev && \
    apt install -y libxkbcommon-x11-0
COPY requirements-gpu.txt /tmp/
RUN pip install -r tmp/requirements-gpu.txt