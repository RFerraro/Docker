#rferraro/cxx-common:alpine-3.4

FROM alpine:3.4

RUN apk add --no-cache \
		bash \
		wget \
        ca-certificates \
        python \
        make \
        cmake \
    && wget -O - https://bootstrap.pypa.io/get-pip.py | python - \
    && pip install \
        setuptools \
        cpp-coveralls


