FROM docker.io/library/nginx:alpine

RUN apk add curl --no-cache

COPY default.conf /etc/nginx/conf.d/default.conf
