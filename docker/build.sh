#!/bin/sh

set -e

echo "Build binary using golang docker image"
docker run --rm -ti \
    -v "`pwd`":/go/src/github.com/restic/restic \
    -w /go/src/github.com/restic/restic golang:1.13.6-alpine docker/compile-all-arch.sh

echo "Build docker image restic/restic:latest"
docker build --rm -t restic/restic:latest -f docker/Dockerfile .
