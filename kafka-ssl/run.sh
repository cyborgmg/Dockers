#!/bin/bash
docker run -d --hostname kafka-ssl --name kafka-ssl -v /home/cyborg/Dockers/kafka-ssl/data:/opt/kafka/data -p 38527:38527 -p 9092:9092 -p 9093:9093 -p 2181:2181 -p 46681:46681 -p 9000:9000 cyborgmg/kafka-ssl:latest
#docker run --rm -it --hostname kafka-ssl --name kafka-ssl -v /home/cyborg/Dockers/kafka-ssl/data:/opt/kafka/data -p 38527:38527 -p 9092:9092 -p 9093:9093 -p 2181:2181 -p 46681:46681 -p 9000:9000 cyborgmg/kafka-ssl:latest
