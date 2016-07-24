#ferraro/build-essentials/cxx-clang-38:ubuntu-16.04

FROM rferraro/build-essentials/cxx-common:ubuntu-16.04

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
        clang && \
    apt-get clean

ENV CC=clang CXX=clang++


