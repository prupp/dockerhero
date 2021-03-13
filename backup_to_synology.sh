
#!/bin/bash
rsync -rav --delete --password-file=/home/rancher/rsync --exclude=movies --exclude=series --exclude=downloads --exclude=music --exclude=incomplete-downloads --exclude=docker  /mnt/storage/ rsync@192.168.178.153::RancherBackup