#!/bin/bash

docker stop swag && docker rm swag && docker rmi ghcr.io/linuxserver/swag && docker-compose -f /home/rancher/config/swag.yml up -d