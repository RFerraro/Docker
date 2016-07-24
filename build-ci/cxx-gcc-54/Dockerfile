#ferraro/cxx-gcc-54

FROM rferraro/cxx-common

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
        gcc \
        g++ && \
    apt-get clean

ENV CC="gcc" CXX="g++"

