#rferraro/cxx-travis-ci:gcc-5.3.0

FROM rferraro/cxx-gcc:5.3.0
MAINTAINER Ryan Ferraro (https://github.com/RFerraro)

RUN apk add --no-cache \
        ca-certificates \
        bash \
        jq \
        git \
        curl \
        coreutils

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
