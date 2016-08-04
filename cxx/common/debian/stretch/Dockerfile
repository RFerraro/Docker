#rferraro/cxx-common:debian-stretch

FROM debian:stretch

RUN apt-get update && apt-get install -y --no-install-recommends \
        ca-certificates \
        python \
        make \
        cmake \
        jq \
        curl \
        git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && curl -s https://bootstrap.pypa.io/get-pip.py 2>/dev/null | python - \
    && pip install \
        setuptools \
        cpp-coveralls
