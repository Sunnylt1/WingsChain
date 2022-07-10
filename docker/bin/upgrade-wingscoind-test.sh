#!/bin/bash

docker pull wicc/wingscoind
docker stop wingscoind-test && docker rm wingscoind-test
cd /opt/docker-instances/wingscoind-test && sh bin/run-wingscoind-test.sh