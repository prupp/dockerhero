#!/bin/bash
set -e

BASE="/home/rancher/updates"

$BASE/update_container.sh radarr
$BASE/update_container.sh plex
$BASE/update_container.sh sabnzbd
$BASE/update_container.sh sonarr
$BASE/update_container.sh swag
$BASE/update_container.sh oauth
$BASE/update_container.sh portainer

docker image prune -f
