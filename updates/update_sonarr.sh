#!/bin/bash

docker stop sonarr && docker rm sonarr && docker rmi lscr.io/linuxserver/sonarr && /usr/local/bin/docker-compose -f /home/rancher/config/sonarr.yml up -d