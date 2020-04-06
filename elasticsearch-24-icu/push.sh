#!/bin/bash

# First, make sure you're logged in and your token has package:write privileges
# echo $GITHUB_TOKEN | docker login docker.pkg.github.com -u $GITHUB_USER --password-stdin

docker build -t es24 .
docker tag es24 docker.pkg.github.com/bonniernews/packages/elasticsearch-24-icu:latest
docker push docker.pkg.github.com/bonniernews/packages/elasticsearch-24-icu:latest