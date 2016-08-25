# rferraro/cxx-travis-ci:clang-3.8.0

FROM rferraro/cxx-clang:3.8.0
MAINTAINER Ryan Ferraro (https://github.com/RFerraro)

RUN apt-get update && apt-get install -y --no-install-recommends \
        ca-certificates \
        jq \
        git \
        curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

#todo: --trusted-host is hacky...
RUN pip install --no-cache-dir --trusted-host pypi.python.org \
        setuptools \
    && rm -rf ~/.cache/pip
    
RUN pip install --no-cache-dir --trusted-host pypi.python.org \
        cpp-coveralls \
        requests==2.7.0 \
        conan==0.11.0 \
    && rm -rf ~/.cache/pip

RUN conan user \
    && conan --version \
    && sed -i.bak '/^path:\s/s#~/.conan/data#/tmp/conan#' ~/.conan/conan.conf \
    && sed -i.bak2 '/^compiler.libcxx=/s#libstdc++#libstdc++11#' ~/.conan/conan.conf \
    && rm ~/.conan/conan.conf.ba*
