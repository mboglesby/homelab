qemu-img create -f qcow2 /mnt/vm-ssd/pfSense-vrouter1.qcow2 10G
virt-install \
	--name=pfSense-vrouter1 \
	--vcpus=2 --cpu host \
	--ram=2048 \
	--disk path=/mnt/vm-ssd/pfSense-vrouter1.qcow2,size=10 \
	--os-type=freebsd --os-variant=freebsd11.1 \
	--network type=direct,source=enp6s0f0,source_mode=passthrough,model=virtio \
	--network type=bridge,source=ovsbr,model=virtio,virtualport_type=openvswitch \
	--graphics vnc --console pty \
	--cdrom /mnt/vm-hdd/pfSense-CE-2.4.4-RELEASE-p1-amd64.iso --wait 0
