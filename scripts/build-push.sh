#!/usr/bin/env bash

set -e
set -x

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t 7silvan/node-frontend:12 .

docker build -t 7silvan/node-frontend:latest .

docker push 7silvan/node-frontend:12

docker push 7silvan/node-frontend:latest
