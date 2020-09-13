#!/bin/bash -u

export GOPATH=$(cd ../../ && pwd)
TAG=${1:-v1.6.0}

make build

docker buildx build -t calfox/external-provisioner:${TAG} --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 --push .
