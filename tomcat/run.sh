#!/bin/bash
docker run -d --name tomcat --hostname tomcat \
-v /home/cyborg/Dockers/tomcat/conf:/root/tomcat/conf \
-v /home/cyborg/Dockers/tomcat/webapps:/root/tomcat/webapps \
-e PORT="8080" \
-p 8001:8080 cyborgmg/tomcat:latest