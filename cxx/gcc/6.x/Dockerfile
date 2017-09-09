#rferraro/cxx-gcc:6.x

FROM rferraro/cxx-common:debian-sid

ENV CC gcc
ENV CXX g++

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        g++-6 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 999 \
    && update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 999 \
    && update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-6 999
