#!/usr/bin/env bash

#Build filebeatimage
docker build -t starlord345/filebeatimage:latest . -f filebeat_docker/Dockerfile

#clean anything with same name to get rid of clashes
docker-compose down
docker-compose -f docker-compose-elk.yml down

#run elk stack
docker-compose -f docker-compose-elk.yml up &

sleep 20

#run jenkins
docker-compose up &
