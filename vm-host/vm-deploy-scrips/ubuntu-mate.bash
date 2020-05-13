qemu-img create -f qcow2 /mnt/vm-ssd/ubuntu-mate.qcow2 30G
virt-install \
	--name=ubuntu-mate \
	--vcpus=2 --cpu host \
	--ram=2048 \
	--disk path=/mnt/vm-ssd/ubuntu-mate.qcow2,size=30 \
	--os-type=linux --os-variant=ubuntu18.10 \
	--network type=bridge,source=ovsbr,model=virtio,virtualport_type=openvswitch \
	--graphics spice --video qxl --channel spicevmc \
	--graphics vnc --console pty \
	--cdrom /mnt/vm-hdd/ubuntu-mate-18.10-desktop-amd64.iso --wait 0
