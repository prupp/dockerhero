#!/bin/bash

docker stop radarr && docker rm radarr && docker rmi ghcr.io/linuxserver/radarr && /usr/local/bin/docker-compose -f /home/rancher/config/radarr.yml up -d