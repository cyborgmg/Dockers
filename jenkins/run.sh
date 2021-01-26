#!/bin/bash
docker run -d --name jenkins --hostname jenkins -v /home/cyborg/Dockers/jenkins/jenkins_home:/var/jenkins_home -e HTTP_PORT="8000" -p 8000:8000 cyborgmg/jenkins:latest