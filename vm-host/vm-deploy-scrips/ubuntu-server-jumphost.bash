qemu-img create -f qcow2 /mnt/vm-ssd/ubuntu-server-jumphost.qcow2 10G
virt-install \
	--name=ubuntu-server-jumphost \
	--vcpus=2 --cpu host \
	--ram=2048 \
	--disk path=/mnt/vm-ssd/ubuntu-server-jumphost.qcow2,size=10 \
	--os-type=linux --os-variant=ubuntu18.04 \
	--network type=bridge,source=ovsbr,model=virtio,virtualport_type=openvswitch \
	--graphics spice \
	--cdrom /mnt/vm-hdd/ubuntu-18.04.3-live-server-amd64.iso --wait 0
