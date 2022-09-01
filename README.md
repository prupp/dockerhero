# dockerhero
Docker Mediaserver based on Ubuntu Server 20.04

* Backup-Script: /home/rancher/backup_to_synology.sh
* Update-Scripts: /home/rancher/updates/
* Configs: /home/rancher/conf/

## CronJobs
30 05 * * * /home/rancher/backup_to_synology.sh > /tmp/cronjob-backup-to-synology.log 2>&1
05 03 * * 1 /home/rancher/updates/update_all_container.sh > /tmp/cronjob-update-all-container.log 2>&1

## SSL Certificates and Proxy
SWAG is in place as proxy (nginx) and Let's Encrypt Cert Bot.
* Proxy configs: /mnt/storage/swag/nginx/proxy-confs

restart the SWAG container whenever changes to the proxy configs should be applied.

## ZFS
ZFS is in use as a filesytem.

Check pool status:
sudo zpool status -v

Create a new dataset/folder:
sudo zfs create -o mountpoint=/mnt/storage/audiobooks storage/audiobooks
you probably have to set the folder owner afterwards:
sudo chown rancher:rancher audiobooks