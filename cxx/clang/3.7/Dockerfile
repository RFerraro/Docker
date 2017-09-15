#rferraro/cxx-clang:3.7

FROM rferraro/cxx-common:debian-stretch

ENV CC clang
ENV CXX clang++

# Get Clang 3.7 from the archive, as its a fairly deprecated package...
RUN echo "deb [check-valid-until=no] http://snapshot.debian.org/archive/debian/20160806T044947Z/ stretch main" >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        llvm-3.7=1:3.7.1-2 \
        clang-3.7=1:3.7.1-2 \
        libclang1-3.7=1:3.7.1-2 \
        libclang-common-3.7-dev=1:3.7.1-2 \
        libllvm3.7=1:3.7.1-2 \
        llvm-3.7-runtime=1:3.7.1-2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.7 999 \
    && update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.7 999 \
    && update-alternatives --install /usr/bin/llvm-cov llvm-cov /usr/bin/llvm-cov-3.7 999
