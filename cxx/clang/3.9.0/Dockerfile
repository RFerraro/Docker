#rferraro/cxx-clang:3.9.0

FROM rferraro/cxx-common:debian-sid

ENV CC clang
ENV CXX clang++

# get a specific snapshot of the debian archive, so docker builds are reproducable
RUN    deb http://snapshot.debian.org/archive/debian/20160908T103544Z/ sid main \
    && deb-src http://snapshot.debian.org/archive/debian/20160908T103544Z/ sid main \
    && deb http://snapshot.debian.org/archive/debian-security/20160908T151211Z/ sid/updates main \
    && deb-src http://snapshot.debian.org/archive/debian-security/20160908T151211Z/ sid/updates main

RUN apt-get -o Acquire::Check-Valid-Until=false update && apt-get install -y --no-install-recommends \
        llvm-3.9=1:3.9-1 \
        clang-3.9=1:3.9-1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.9 999 \
    && update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.9 999 \
    && update-alternatives --install /usr/bin/llvm-cov llvm-cov /usr/bin/llvm-cov-3.9 999
