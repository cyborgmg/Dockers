#!/bin/bash
docker run -d --hostname redis --name redis -e REDIS_PASSWORD=c6b94gmg -p 6379:6379 cyborgmg/redis:latest
     