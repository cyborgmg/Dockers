#!/bin/bash
docker run -d --env-file ./env.list -p 8080:8080 cyborgmg/ada:latest