#!/bin/bash

# First, make sure you're logged in and your token has package:write privileges
# echo $GITHUB_TOKEN | docker login docker.pkg.github.com -u $GITHUB_USER --password-stdin

# We REALLY want to push these to the Github Packages repository, but for some reason GitHub 
# currently doesn't support using services from their own registry. So we use Docker Hub until 
# they fix that
# docker build -t docker.pkg.github.com/bonniernews/packages/elasticsearch-24-icu:latest .
# docker push docker.pkg.github.com/bonniernews/packages/elasticsearch-24-icu:latest

docker build -t bonniernews/elasticsearch-es24-icu .
docker push bonniernews/elasticsearch-es24-icu:latest