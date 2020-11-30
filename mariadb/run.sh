#!/bin/bash
docker run -d --hostname mariadb --name mariadb -v /home/cyborg/Dockers/mariadb/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123 -e MYSQL_DATABASE=springbootdb -p 3306:3306 mariadb:latest