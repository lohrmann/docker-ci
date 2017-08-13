#!/bin/bash
NAME=web-deploy-awscli
VERSION=0.1

docker build -t deploy-web .
docker tag deploy-web danlohrm/${NAME}:${VERSION}

# Requires credentials in ~/.dockercfg
docker push danlohrm/${NAME}:${VERSION}
