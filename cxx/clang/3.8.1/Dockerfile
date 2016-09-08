#rferraro/cxx-clang:3.8.1

FROM rferraro/cxx-common:debian-stretch

ENV CC clang
ENV CXX clang++

# use a specific snapshot of the debian archive, so docker builds are reproducable
RUN echo "deb http://snapshot.debian.org/archive/debian/20160908T103544Z/ stretch main" >> /etc/apt/sources.list \
    && apt-get -o Acquire::Check-Valid-Until=false update && apt-get install -y --no-install-recommends \
        llvm-3.8=1:3.8.1-9 \
        clang-3.8=1:3.8.1-9 \
        libclang1-3.8=1:3.8.1-9 \
        libclang-common-3.8-dev=1:3.8.1-9 \
        libllvm3.8=1:3.8.1-9 \
        llvm-3.8-runtime=1:3.8.1-9 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.8 999 \
    && update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 999 \
    && update-alternatives --install /usr/bin/llvm-cov llvm-cov /usr/bin/llvm-cov-3.8 999
