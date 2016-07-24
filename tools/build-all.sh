#!/bin/bash

echo "removing stale images"
docker ps -q -a | xargs docker rm
docker rmi $(docker images | grep "^<none>" | awk '{print $3}')
docker rmi rferraro/cxx-common \
	rferraro/cxx-gcc-54 \
	rferraro/cxx-clang-38 \
	rferraro/cxx-gcc-54-conan \
	rferraro/cxx-clang-38-conan

set -e

ToolsPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd "$ToolsPath"
pushd ..

#docker build --no-cache -t rferraro/build-essentials/cxx-common:ubuntu-16.04 cxx-common

docker build -t rferraro/cxx-common build-ci/cxx-common
docker build -t rferraro/cxx-gcc-54 build-ci/cxx-gcc-54
docker build -t rferraro/cxx-clang-38 build-ci/cxx-clang-38
docker build -t rferraro/cxx-gcc-54-conan build-ci/cxx-gcc-54-conan
docker build -t rferraro/cxx-clang-38-conan build-ci/cxx-clang-38-conan

popd
popd
