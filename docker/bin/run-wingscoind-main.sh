#!/bin/bash

cd /opt/docker-instances/wingscoind-main \
&& docker run --name wingscoind-main -p8920:8920 -p 6968:6968 \
       -v `pwd`/conf/WingsChain.conf:/root/.WingsChain/WingsChain.conf \
       -v `pwd`/data:/root/.WingsChain/main \
       -v `pwd`/bin:/opt/wicc/bin \
       -d wicc/wingscoind:v3.0
