#rferraro/cxx-clang:3.7.1

FROM rferraro/cxx-common:debian-stretch

ENV CC clang
ENV CXX clang++

# get specific snapshot of debian archive, so docker builds are reproducable
RUN deb http://snapshot.debian.org/archive/debian/20160806T044947Z/ stretch main \    
    && apt-get update && apt-get install -y --no-install-recommends \
        llvm-3.7=1:3.7.1-2 \
        clang-3.7=1:3.7.1-2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.7 999 \
    && update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.7 999 \
    && update-alternatives --install /usr/bin/llvm-cov llvm-cov /usr/bin/llvm-cov-3.7 999
