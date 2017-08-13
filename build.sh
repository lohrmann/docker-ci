#!/bin/bash
NAME=web-deploy-awscli
VERSION=0.1

docker build -t deploy-web .
docker tag deploy-web danlohrm/circleci/${NAME}:${VERSION}

# Requires credentials in ~/.dockercfg
docker push danlohrm/circleci/${NAME}:${VERSION}
