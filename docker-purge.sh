#!/bin/bash
containers=`docker ps -a -q`
if [ -n "$containers" ]; then
    docker stop $containers
fi
containers=`docker ps -a -q`
if [ -n "$containers" ]; then
    docker rm -f -v $containers
fi
images=`docker images -q -a`
if [ -n "$images" ]; then
    docker rmi -f $images
fi
