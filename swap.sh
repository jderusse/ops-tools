#!/bin/sh

swapon -s|grep file && echo "Already swapped" && exit 0

dd if=/dev/zero of=/var/swap.1 bs=1G count=2
chmod 600 /var/swap.1
mkswap /var/swap.1
swapon /var/swap.1
echo "/var/swap.1 swap swap defaults 0 0" >> /etc/fstab
