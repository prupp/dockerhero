#!/bin/bash

docker stop plex && docker rm plex && docker rmi lscr.io/linuxserver/plex && /usr/local/bin/docker-compose -f /home/rancher/config/plex.yml up -d