#!/bin/bash

# Generate the html
hugo --minify --cleanDestinationDir

# create the docker container
docker build -t jturpin/leftoverco.de .

# push the container to dockerhub
docker push jturpin/leftoverco.de