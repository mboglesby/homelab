qemu-img create -f qcow2 /mnt/vm-ssd/openmediavault.qcow2 10G
qemu-img create -f qcow2 /mnt/vm-hdd/nas1.qcow2 1024G
virt-install \
	--name=openmediavault \
	--vcpus=1 --cpu host \
	--ram=2048 \
	--disk path=/mnt/vm-ssd/openmediavault.qcow2,size=10 \
	--disk path=/mnt/vm-hdd/nas1.qcow2,size=1024 \
	--os-type=linux --os-variant=debian9 \
	--network type=bridge,source=ovsbr,model=virtio,virtualport_type=openvswitch \
	--graphics vnc --console pty \
	--cdrom /mnt/vm-hdd/openmediavault_4.1.3-amd64.iso --wait 0
