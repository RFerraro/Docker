# rferraro/build-essentials/cxx-common:ubuntu-16.04
# Version 1

FROM ubuntu:16.04

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
        cmake \
        make \
        python \
        wget \
        ca-certificates && \
    apt-get clean && \
    wget -O - https://bootstrap.pypa.io/get-pip.py | python - && \
    pip install \
        setuptools \
        cpp-coveralls

