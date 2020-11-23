#!/bin/bash
docker run -d --hostname mongodb --name mongodb -v /home/cyborg/Dockers/mongodb/mongodb:/var/lib/mongodb -p 27017:27017 cyborgmg/mongodb:latest