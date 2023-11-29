FROM continuumio/miniconda3:latest

MAINTAINER Yuan Zan <seqyuan@gmail.com>

WORKDIR /app

RUN apt-get update && \
		apt-get install -y make \
		libxt-dev \
		gcc \
		libcurl4-openssl-dev \
		g++ \
		imagemagick \
		wget

RUN conda create -n python2.7 python=2.7 
# 激活Python 2.7环境
SHELL ["conda", "run", "-n", "python2.7", "/bin/bash", "-c"]
RUN conda install -y mamba

CMD ["conda", "run", "-n", "python2.7", "/bin/bash"]
