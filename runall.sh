#!/usr/bin/env bash

#Build filebeatimage
cd filebeat_docker
docker build -t filebeatimage . 

#clean anything with same name to get rid of clashes
cd ../docker_elk
docker-compose  down
cd ../
docker-compose -f docker-compose-jenkins.yaml down
#docker-compose down

#run elk stack
#docker-compose -f docker-compose-elk.yml up &
cd docker_elk
docker-compose up -d 
#docker run -d starlord345/filebeatimage:latest
sleep 20

#run jenkins
cd ../
docker-compose -f docker-compose-jenkins.yaml up -d