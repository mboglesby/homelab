qemu-img create -f qcow2 /mnt/vm-ssd/kube-master01.qcow2 30G
virt-install \
	--name=kube-master01 \
	--vcpus=2 --cpu host \
	--ram=2048 \
	--disk path=/mnt/vm-ssd/kube-master01.qcow2,size=30 \
	--os-type=linux --os-variant=ubuntu18.04 \
	--network type=bridge,source=ovsbr,model=virtio,virtualport_type=openvswitch \
	--graphics spice \
	--cdrom /mnt/vm-hdd/ubuntu-18.04.3-live-server-amd64.iso --wait 0
