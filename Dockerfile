FROM ubuntu:trusty

MAINTAINER Jonathan Miller <jonathan.michael.miller@gmail.com>

RUN apt-get update && \
    apt-get install -y redis-server=2:2.8.4-2

VOLUME [ "/data" ]

EXPOSE 6379

ENTRYPOINT ["redis-server", "/data/redis.conf"]
