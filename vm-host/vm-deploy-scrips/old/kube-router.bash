qemu-img create -f qcow2 /mnt/vm-hdd/kube-router.qcow2 5G
virt-install \
	--name=kube-router \
	--vcpus=1 --cpu host \
	--ram=512 \
	--disk path=/mnt/vm-hdd/kube-router.qcow2,size=5 \
	--os-type=linux --os-variant=alpinelinux3.8 \
	--network type=bridge,source=ovsbr,model=virtio,virtualport_type=openvswitch \
	--network type=bridge,source=kubebr,model=virtio,virtualport_type=openvswitch \
	--graphics spice \
	--cdrom /mnt/vm-hdd/alpine-standard-3.9.3-x86_64.iso --wait 0
