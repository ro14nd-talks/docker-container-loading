#!/bin/sh
tag=$(git rev-parse --abbrev-ref HEAD)
echo "Starting presentation rhuss/docker-container-loading:${tag}"

docker run -it --rm \
      -v $(pwd)/slides:/slides \
      -p 9000:9000 -p 35729:35729 \
      rhuss/docker-container-loading:${tag} $*
