#!/bin/bash
tag=$(git rev-parse --abbrev-ref HEAD)
target="$(pwd)/docker-container-loading-${tag}.pdf"

echo "Creating ${target}"
echo "(Don't forget to start the presentation before)"

pushd ../tools/decktape
if [ x$DOCKER_HOST = x ]; then
   host="localhost"
else
   echo $DOCKER_HOST | grep -q "^unix";
   if [ $? -ne 0 ]; then
     host=$(echo $DOCKER_HOST | sed -e "s/[^/]*\/\/\([^:/]*\).*/\1/")
   else
     host="localhost"
   fi
fi
./phantomjs decktape.js reveal -s 1280x720 --load 200 http://${host}:9000 $target
popd
