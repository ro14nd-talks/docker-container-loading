#!/bin/sh

tag=$(git rev-parse --abbrev-ref HEAD)
echo "Building rhuss/docker-container-loading:${tag}"
docker build ${extra_args} --build-arg pdf=$(ls docker-container*.pdf) -t rhuss/docker-container-loading:${tag} .
sed -i.bak "s/^tag=.*$/tag=${tag}/" run-container.sh
rm run-container.sh.bak
