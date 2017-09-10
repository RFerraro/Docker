#rferraro/cxx-clang:3.7

FROM rferraro/cxx-common:debian-sid

ENV CC clang
ENV CXX clang++

RUN echo "deb [check-valid-until=no] http://snapshot.debian.org/archive/debian/20161008T044734Z/ sid main" >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        llvm-3.7 \
        clang-3.7 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.7 999 \
    && update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.7 999 \
    && update-alternatives --install /usr/bin/llvm-cov llvm-cov /usr/bin/llvm-cov-3.7 999
