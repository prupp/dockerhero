#!/bin/bash

docker stop readarr-audiobooks && docker rm readarr-audiobooks && docker rmi lscr.io/linuxserver/readarr && /usr/local/bin/docker-compose -f /home/rancher/config/readarr-audiobooks.yml up -d