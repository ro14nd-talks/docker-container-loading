#!/bin/sh
echo "Starting presentation 'docker-container-loading'"

docker run -it --rm \
      -v $(pwd)/slides:/slides \
      -p 9000:9000 -p 35729:35729 \
      rhuss/talk-docker-container-loading $*
