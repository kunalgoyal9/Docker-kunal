FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04
MAINTAINER Kunal

# Install my-extra-package-1 and my-extra-package-2
RUN apt-get update -y && apt-get install -y python3-pip python3-dev libsm6 libxext6 libxrender-dev

RUN \
	apt-get install -y \
	wget \
	unzip \
	ffmpeg \ 
	git


ADD requirements.txt .  
RUN python3 -m pip install -r requirements.txt

WORKDIR /home

WORKDIR /home/kunalgoyal.goyal9/
# CMD ["python3","aocr_consumer_producer_v2.py","0"]
