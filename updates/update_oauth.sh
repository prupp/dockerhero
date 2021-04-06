#!/bin/bash

docker stop oauth && docker rm oauth && docker rmi voucher/vouch-proxy && /usr/local/bin/docker-compose -f /home/rancher/config/oauth.yml up -d