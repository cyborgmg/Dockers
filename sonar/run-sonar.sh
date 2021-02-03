#!/bin/bash
docker run -d --name sonar --hostname sonar -v /home/cyborg/Dockers/sonar/sonarqube:/opt/sonarqube -e SONARQUBE_JDBC_URL="jdbc:postgresql://192.168.0.8:5432/sonar" -p 9000:9000 sonarqube:7.9.5-community