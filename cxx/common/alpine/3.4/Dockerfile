#rferraro/cxx-common:alpine-3.4

FROM alpine:3.4

RUN apk add --no-cache \
		bash \
        ca-certificates \
        python \
        make \
        cmake \
        jq \
        curl \
        git \
        coreutils \
    && curl -s https://bootstrap.pypa.io/get-pip.py 2>/dev/null | python - \
    && pip install \
        setuptools \
        cpp-coveralls


