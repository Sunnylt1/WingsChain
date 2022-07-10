#!/bin/bash

cd /opt/docker-instances/wingscoind-test \
&& docker run --name wingscoind-test -p18920:18920 -p 6967:6968 \
       -v `pwd`/conf/WingsChain.conf:/root/.WingsChain/WingsChain.conf \
       -v `pwd`/data:/root/.WingsChain/testnet \
       -v `pwd`/bin:/opt/wicc/bin \
       -d wicc/wingscoind