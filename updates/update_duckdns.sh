#!/bin/bash

docker stop duckdns && docker rm duckdns && docker rmi ghcr.io/linuxserver/duckdns && docker-compose -f /home/rancher/config/duckdns.yml up -d