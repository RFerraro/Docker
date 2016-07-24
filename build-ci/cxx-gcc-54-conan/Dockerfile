#rferraro/cxx-gcc-54-conan

FROM rferraro/cxx-gcc-54

ADD conan /usr/bin
WORKDIR /usr/src/

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
        git && \
    apt-get clean && \
    git clone https://github.com/RFerraro/conan.git && \
    pip install -r conan/conans/requirements.txt && \
    chmod +x /usr/bin/conan && \
    conan user && \
    conan --version

