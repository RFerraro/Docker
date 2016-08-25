#rferraro/cxx-common:debian-stretch

FROM debian:stretch
MAINTAINER Ryan Ferraro (https://github.com/RFerraro)

RUN apt-get update && apt-get install -y --no-install-recommends \
        python \
        python-pip \
        make \
        cmake \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* 
