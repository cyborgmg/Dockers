#!/bin/bash
docker run -d --hostname ada-front --name ada-front -p 8081:8081 -e API_URL=192.168.0.8:8080 cyborgmg/ada-front:latest
     