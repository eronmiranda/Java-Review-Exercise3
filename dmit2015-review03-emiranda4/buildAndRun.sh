#!/bin/sh
if [ $(docker ps -a -f name=dmit2015-review03-emiranda4 | grep -w dmit2015-review03-emiranda4 | wc -l) -eq 1 ]; then
  docker rm -f dmit2015-review03-emiranda4
fi
mvn clean package && docker build -t ca.nait.dmit/dmit2015-review03-emiranda4 .
docker run -d -p 9080:9080 -p 9443:9443 --name dmit2015-review03-emiranda4 ca.nait.dmit/dmit2015-review03-emiranda4
