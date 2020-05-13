qemu-img create -f qcow2 /mnt/vm-ssd/fedora-vserver1.qcow2 10G
virt-install \
	--name=fedora-vserver1 \
	--vcpus=1 --cpu host \
	--ram=1024 \
	--disk path=/mnt/vm-ssd/fedora-vserver1.qcow2,size=10 \
	--os-type=linux --os-variant=fedora29 \
	--network type=direct,source=enp9s0,source_mode=bridge,model=virtio \
	--graphics vnc --console pty \
	--cdrom /mnt/vm-hdd/Fedora-Server-netinst-x86_64-29-1.2.iso --wait 0
