#!/bin/bash

systemctl stop libvirtd
rm -rf /etc/libvirt/qemu
ln -s /mnt/vm-ssd/libvirt-conf/qemu/ /etc/libvirt/qemu
rm -rf /etc/libvirt/storage
ln -s /mnt/vm-ssd/libvirt-conf/storage/ /etc/libvirt/storage
systemctl start libvirtd
