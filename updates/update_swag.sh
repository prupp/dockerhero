#!/bin/bash

docker stop swag && docker rm swag && docker rmi lscr.io/linuxserver/swag && /usr/local/bin/docker-compose -f /home/rancher/config/swag.yml up -d