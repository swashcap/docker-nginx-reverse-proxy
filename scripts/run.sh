#!/bin/bash
set -exo pipefail

docker build -t swashcap/docker-nginx-reverse-proxy .
docker run --name swashcap_dnrp \
  --rm -d -p 443:443 swashcap/docker-nginx-reverse-proxy
