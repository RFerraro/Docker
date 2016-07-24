#!/bin/bash

echo "removing stale images"
docker ps -q -a | xargs docker rm
docker rmi $(docker images | grep "^<none>" | awk '{print $3}')
docker rmi rferraro/build-essentials/cxx-common:ubuntu-16.04 \
	rferraro/build-essentials/cxx-gcc-54:ubuntu-16.04 \
	rferraro/build-essentials/cxx-clang-38:ubuntu-16.04 \
	rferraro/build-essentials/cxx-gcc-54-conan:0.9.4-custom \
	rferraro/build-essentials/cxx-clang-38-conan:0.10.1

set -e

ToolsPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd "$ToolsPath"
pushd ..

#docker build --no-cache -t rferraro/build-essentials/cxx-common:ubuntu-16.04 cxx-common

docker build -t rferraro/build-essentials/cxx-common:ubuntu-16.04 build-essentials/cxx-common
docker build -t rferraro/build-essentials/cxx-gcc-54:ubuntu-16.04 build-essentials/cxx-gcc-54
docker build -t rferraro/build-essentials/cxx-clang-38:ubuntu-16.04 build-essentials/cxx-clang-38
docker build -t rferraro/build-essentials/cxx-gcc-54-conan:0.9.4-custom build-essentials/cxx-gcc-54-conan
docker build -t rferraro/build-essentials/cxx-clang-38-conan:0.10.1 build-essentials/cxx-clang-38-conan

popd
popd
