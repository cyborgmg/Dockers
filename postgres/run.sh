#!/bin/bash
docker run -d --name postgres --hostname postgres -v /home/cyborg/Kubernets/ada/postgres/data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=c6b94gmg -e POSTGRES_USER=postgres -e POSTGRES_DB=ada -p 5432:5432 postgres:latest
