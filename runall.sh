#!/usr/bin/env bash

#Build filebeatimage
cd filebeat_docker
docker build -t filebeatimage . 

#clean anything with same name to get rid of clashes
cd ../docker_elk
docker-compose  down
#docker-compose down
#docker-compose -f docker-compose-elk.yml down

#run elk stack
#docker-compose -f docker-compose-elk.yml up &
docker-compose up -d 
#docker run -d starlord345/filebeatimage:latest
sleep 20

#run jenkins
#docker-compose up &
