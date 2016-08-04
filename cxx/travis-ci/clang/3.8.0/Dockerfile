# rferraro/cxx-travis-ci:clang-3.8.0

FROM rferraro/cxx-clang:3.8.0

RUN pip install \
        conan==0.10.1 \
    && conan user \
    && conan --version \
    && sed -i.bak '/^compiler.libcxx=/s/libstdc++/libstdc++11/' ~/.conan/conan.conf \
    && rm ~/.conan/conan.conf.bak
