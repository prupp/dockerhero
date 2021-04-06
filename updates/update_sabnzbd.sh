#!/bin/bash

docker stop sabnzbd && docker rm sabnzbd && docker rmi ghcr.io/linuxserver/sabnzbd && /usr/local/bin/docker-compose -f /home/rancher/config/sabnzbd.yml up -d