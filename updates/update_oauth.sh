#!/bin/bash

docker stop oauth && docker rm oauth && docker rmi voucher/vouch-proxy && docker-compose -f /home/rancher/config/oauth.yml up -d