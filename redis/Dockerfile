FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt -qq update && apt install -y redis

ENV REDIS_PASSWORD=123456

EXPOSE 6379

CMD redis-server --bind 0.0.0.0 --port 6379 --requirepass $REDIS_PASSWORD