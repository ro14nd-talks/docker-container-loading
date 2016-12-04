#!/bin/sh
echo "Starting presentation"

docker run -it --rm \
      -v $(pwd)/slides:/slides \
      -p 9000:9000 -p 35729:35729 \
      ro14nd-talks/container-loading $*

