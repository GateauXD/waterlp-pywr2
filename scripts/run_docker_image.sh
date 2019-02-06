#!/usr/bin/env bash
docker pull openagua/waterlp-pywr
docker rm --force waterlp
docker run -d --env-file ./env.list --volume /home/ubuntu:/home/root --volume /etc/localtime:/etc/localtime  --name waterlp openagua/waterlp-pywr
docker system image --all --force
