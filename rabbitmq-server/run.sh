#!/bin/bash
docker run -d --hostname rabbitmq --name rabbitmq -v /home/cyborg/Dockers/rabbitmq-server/rabbitmq-data:/var/lib/rabbitmq -p 15672:15672 -p 5672:5672 cyborgmg/rabbitmq:latest