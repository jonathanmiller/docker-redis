FROM ubuntu

MAINTAINER Jonathan Miller <jonathan.michael.miller@gmail.com>

RUN apt-get update && \
    apt-get install -y redis-server

VOLUME [ "/data" ]

EXPOSE 6379

ENTRYPOINT ["redis-server", "/data/redis.conf"]
