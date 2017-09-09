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


docker build $build_options -t rferraro/cxx-common:debian-sid ../cxx/common/debian/sid
docker build $build_options -t rferraro/cxx-gcc:5.x ../cxx/gcc/5.x
docker build $build_options -t rferraro/cxx-gcc:6.x ../cxx/gcc/6.x
docker build $build_options -t rferraro/cxx-gcc:7.x ../cxx/gcc/7.x
docker build $build_options -t rferraro/cxx-clang:3.7 ../cxx/clang/3.7
docker build $build_options -t rferraro/cxx-clang:3.8 ../cxx/clang/3.8
docker build $build_options -t rferraro/cxx-clang:3.9 ../cxx/clang/3.9
docker build $build_options -t rferraro/cxx-clang:4.0 ../cxx/clang/4.0
docker build $build_options -t rferraro/cxx-clang:5.0 ../cxx/clang/5.0
