#!/bin/sh
# Build and execute a simple NodeJS application that will respond to a CURL request to PORT 2020
echo *INFO* finding and removing any previous instances
id=`docker ps -a|grep -i edge2020|awk '{print $1}'`
docker stop ${id}
docker rm ${id}
docker rmi `whoami`/edge2020
echo *INFO* building a new NodeJS container image
docker build -t `whoami`/edge2020 .
echo *INFO* running our new image and exposing service on port 2020
docker run -p 2020:8080 -d `whoami`/edge2020
id=`docker ps|grep -i edge2020|awk '{print $1}'`
echo *INFO* waiting 5 seconds for the NodeJS server to initialise
sleep 5
echo *INFO* look at the application logs
docker logs ${id}
echo *INFO* send a request to the server
curl -i localhost:2020



