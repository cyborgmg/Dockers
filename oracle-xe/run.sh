#!/bin/bash
docker run -d --name oracle-xe-11g --hostname oracle-xe-11g -v /home/cyborg/Dockers/oracle-xe/u01:/u01 -p 1521:1521 -p 5500:8080 cyborgmg/oracle-xe-11g:latest
