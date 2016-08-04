#!/bin/bash

echo "removing stale images"
docker ps -q -a | xargs docker rm
docker rmi $(docker images | grep "^<none>" | awk '{print $3}')

set -e

#docker build --no-cache -t rferraro/cxx-common:debian-stretch cxx/common/debian/stretch

docker build -t rferraro/cxx-common:debian-stretch cxx/common/debian/stretch
docker build -t rferraro/cxx-common:alpine-3.4 cxx/common/alpine/3.4
docker build -t rferraro/cxx-gcc:5.3.0 cxx/gcc/5.3.0
docker build -t rferraro/cxx-clang:3.8.0 cxx/clang/3.8.0
docker build -t rferraro/cxx-clang:3.7.1 cxx/clang/3.7.1
docker build -t rferraro/cxx-travis-ci:gcc-5.3.0 cxx/travis-ci/gcc/5.3.0
docker build -t rferraro/cxx-travis-ci:clang-3.8.0 cxx/travis-ci/clang/3.8.0
docker build -t rferraro/cxx-travis-ci:clang-3.7.1 cxx/travis-ci/clang/3.7.1

