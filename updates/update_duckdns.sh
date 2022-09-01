#!/bin/bash

docker stop duckdns && docker rm duckdns && docker rmi lscr.io/linuxserver/duckdns && /usr/local/bin/docker-compose -f /home/rancher/config/duckdns.yml up -d