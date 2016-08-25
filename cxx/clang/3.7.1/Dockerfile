#rferraro/cxx-clang:3.7.1

FROM rferraro/cxx-common:debian-stretch
MAINTAINER Ryan Ferraro (https://github.com/RFerraro)

ENV CC=clang CXX=clang++
    
RUN apt-get update && apt-get install -y --no-install-recommends \
        llvm-3.7=1:3.7.1-2 \
		clang-3.7=1:3.7.1-2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    
RUN    update-alternatives --install /usr/bin/clang    clang    /usr/bin/clang-3.7    999 \
    && update-alternatives --install /usr/bin/clang++  clang++  /usr/bin/clang++-3.7  999 \
    && update-alternatives --install /usr/bin/llvm-cov llvm-cov /usr/bin/llvm-cov-3.7 999
