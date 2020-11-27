#!/bin/bash
#docker run -d --hostname kafka --name kafka -v /home/cyborg/Dockers/kafka/data:/opt/kafka/data -p 38527:38527 -p 9092:9092 -p 2181:2181 -p 46681:46681 -p 9000:9000 cyborgmg/kafka:latest
docker run -d --hostname kafka --name kafka -v /home/cyborg/Dockers/kafka/data:/opt/kafka/data -p 38527:38527 -p 9092:9092 -p 2181:2181 -p 46681:46681 -p 9000:9000 cyborgmg/kafka:latest