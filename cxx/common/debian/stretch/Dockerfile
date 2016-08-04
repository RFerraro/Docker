#rferraro/cxx-common:debian-stretch

FROM debian:stretch

RUN apt-get update && apt-get install -y --no-install-recommends \
		wget \
        ca-certificates \
        python \
        make \
        cmake \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && wget -O - https://bootstrap.pypa.io/get-pip.py | python - \
    && pip install \
        setuptools \
        cpp-coveralls
