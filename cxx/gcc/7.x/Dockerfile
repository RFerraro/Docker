#rferraro/cxx-gcc:7.x

FROM rferraro/cxx-common:debian-sid

ENV CC gcc
ENV CXX g++

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        g++-7 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 999 \
    && update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 999 \
    && update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-7 999
