#ferraro/build-essentials/cxx-gcc-54:ubuntu-16.04

FROM rferraro/build-essentials/cxx-common:ubuntu-16.04

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
        gcc \
        g++ && \
    apt-get clean

ENV CC="gcc" CXX="g++"

