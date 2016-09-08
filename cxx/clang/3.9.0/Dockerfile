#rferraro/cxx-clang:3.9.0

FROM rferraro/cxx-common:debian-sid

ENV CC clang
ENV CXX clang++

# use a specific snapshot of the debian archive, so docker builds are reproducable
RUN echo "deb http://snapshot.debian.org/archive/debian/20160908T103544Z/ sid main" >> /etc/apt/sources.list \
    && apt-get -o Acquire::Check-Valid-Until=false update && apt-get install -y --no-install-recommends \
        llvm-3.9=1:3.9-1 \
        clang-3.9=1:3.9-1 \
        libclang1-3.9=1:3.9-1 \
        libclang-common-3.9-dev=1:3.9-1 \
        libllvm3.9=1:3.9-1 \
        llvm-3.9-runtime=1:3.9-1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.9 999 \
    && update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.9 999 \
    && update-alternatives --install /usr/bin/llvm-cov llvm-cov /usr/bin/llvm-cov-3.9 999
