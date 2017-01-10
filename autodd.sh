#! /bin/sh
echo "URL:"
read url
wget -O /tmp/img.iso $url
lsblk
echo "Disk: (eg: sdb sdc)"
read disk
dd if=/tmp/img.iso of=/dev/$disk
sync
