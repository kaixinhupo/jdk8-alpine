FROM openjdk:8-jdk-alpine
MAINTAINER pasq

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
 && apk update && apk upgrade && apk add ttf-dejavu 

COPY simsun.ttf /usr/share/fonts/simsun/simsun.ttf

RUN fc-cache