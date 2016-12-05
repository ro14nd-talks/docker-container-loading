#!/bin/sh

echo =======================================================================
echo "Building rhuss/talk-docker-container-loading"
docker build -t rhuss/talk-docker-container-loading:latest .

if [ x$1 = "x-p" ]; then
  echo =======================================================================
  echo "Generating PDF"
  id=$(docker run -d rhuss/talk-docker-container-loading:latest)
  sleep 2
  docker run --rm --network container:$id -v `pwd`:/slides astefanutti/decktape http://localhost:9000 docker-container-loading.pdf
  docker stop $id
fi
