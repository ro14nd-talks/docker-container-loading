FROM rhuss/docker-reveal:1.1.1

MAINTAINER rhuss@redhat.com

ARG pdf=docker-container-loading.pdf

RUN apk update 
ADD slides /slides/
ADD ${pdf} /slides/docker-container-loading.pdf
