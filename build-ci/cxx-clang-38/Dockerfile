#ferraro/cxx-clang-38

FROM rferraro/cxx-common

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
        clang && \
    apt-get clean

ENV CC=clang CXX=clang++


