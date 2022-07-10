#!/bin/bash

# Usage: launch a container to build WingsChain source code from github repo
#
NET=$1
WORK_DIR=$2
SRC_DIR=$3

[ -z "$NET" ] && NET=testnet
 
docker run --name build-wingscoind \
       -v $WORK_DIR/conf/WingsChain.conf:/root/.WingsChain/WingsChain.conf \
       -v $WORK_DIR/data:/root/.WingsChain/$NET \
       -v $WORK_DIR/bin:/opt/wicc/bin \
       -v $SRC_DIR:/opt/wicc/src:rw \
       -it wicc/wingscoind bash
