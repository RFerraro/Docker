#!/bin/bash

set -e

function usage
{
    printf "Usage: %s [<options>]\n" $(basename $0)
    echo ""
    echo "Available options:"
    echo "    -s     stop all running containers"
    echo "    -d     delete all untagged images (implies -s)"
    echo "    -c     rebuild images without cache"
}

opt_stop_all=0
opt_delete_orphan=0
build_options=""

while getopts ":sdch?" opt ; do
    case "$opt" in
        s)
            opt_stop_all=1
            ;;
        d)
            opt_stop_all=1
            opt_delete_orphan=1
            ;;
        c)
            build_options="--no-cache"
            ;;
        h|\?)
            usage
            exit 0
            ;;
    esac
done

if [ $opt_stop_all -eq 1 ]; then
	echo "stopping containers"
	docker ps -q -a | xargs docker rm 2> /dev/null || $true
fi

if [ $opt_delete_orphan -eq 1 ]; then
	echo "removing stale images"
	docker rmi $(docker images | grep "^<none>" | awk '{print $3}') 2> /dev/null || $true
fi


docker build $build_options -t rferraro/cxx-common:debian-stretch cxx/common/debian/stretch
docker build $build_options -t rferraro/cxx-common:alpine-3.4 cxx/common/alpine/3.4
docker build $build_options -t rferraro/cxx-gcc:5.3.0 cxx/gcc/5.3.0
docker build $build_options -t rferraro/cxx-clang:3.8.0 cxx/clang/3.8.0
docker build $build_options -t rferraro/cxx-clang:3.7.1 cxx/clang/3.7.1
docker build $build_options -t rferraro/cxx-travis-ci:gcc-5.3.0 cxx/travis-ci/gcc/5.3.0
docker build $build_options -t rferraro/cxx-travis-ci:clang-3.8.0 cxx/travis-ci/clang/3.8.0
docker build $build_options -t rferraro/cxx-travis-ci:clang-3.7.1 cxx/travis-ci/clang/3.7.1

