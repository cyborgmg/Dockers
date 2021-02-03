#!/bin/bash
docker run -d --name pg-sonar --hostname pg-sonar -v /home/cyborg/Dockers/sonar/postgresql/data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=sonar -e POSTGRES_USER=sonar -e POSTGRES_DB=sonar -p 5432:5432 postgres:latest
