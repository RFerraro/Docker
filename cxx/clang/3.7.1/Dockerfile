#rferraro/cxx-clang:3.7.1

FROM rferraro/cxx-common:debian-stretch

ENV CC clang
ENV CXX clang++

# get a specific snapshot of the debian archive, so docker builds are reproducable
RUN    echo "deb http://snapshot.debian.org/archive/debian/20160806T044947Z/ stretch main" >> /etc/apt/sources.list \
    && echo "deb-src http://snapshot.debian.org/archive/debian/20160806T044947Z/ stretch main" >> /etc/apt/sources.list \
    && echo "deb http://snapshot.debian.org/archive/debian-security/20160806T023609Z/ stretch/updates main" >> /etc/apt/sources.list \
    && echo "deb-src http://snapshot.debian.org/archive/debian-security/20160806T023609Z/ stretch/updates main" >> /etc/apt/sources.list

RUN apt-get -o Acquire::Check-Valid-Until=false update && apt-get install -y --no-install-recommends \
        llvm-3.7=1:3.7.1-2 \
        clang-3.7=1:3.7.1-2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.7 999 \
    && update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.7 999 \
    && update-alternatives --install /usr/bin/llvm-cov llvm-cov /usr/bin/llvm-cov-3.7 999
