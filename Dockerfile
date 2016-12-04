FROM rhuss/docker-reveal:1.1.1

MAINTAINER rhuss@redhat.com

RUN apk update 
ADD slides /slides/
