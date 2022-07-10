#!/bin/bash

docker pull wicc/wingscoind
docker stop wingscoind-main && docker rm wingscoind-main
cd /opt/docker-instances/wingscoind-main && sh bin/run-wingscoind-main.sh