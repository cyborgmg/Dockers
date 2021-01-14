#!/bin/bash
#docker run -d --hostname mysql --name mysql -v /home/cyborg/Dockers/mysql/mysql:/var/lib/mysql -v /home/cyborg/Dockers/mysql/config:/etc/mysql/config -e MYSQL_ROOT_PASSWORD=123 -e MYSQL_DATABASE=cyborgdb -p 3306:3306 -p 33060:33060 mysql:5.7.32

#docker run -d --hostname mysql --name mysql -e MYSQL_ROOT_PASSWORD=123 -e MYSQL_DATABASE=cyborgdb -p 3306:3306 cyborgmg/mysql:latest

docker run -d --hostname mysql --name mysql -v /home/cyborg/Dockers/mysql/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123 -e MYSQL_DATABASE=cyborgdb -p 3306:3306 -p 33060:33060 cyborgmg/mysql:latest