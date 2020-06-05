#!/bin/bash

dnf install openvswitch
systemctl enable openvswitch
systemctl start openvswitch
ovs-vsctl add-br ovsbr
ovs-vsctl add-port ovsbr enp6s0f1
#ovs-vsctl add-port ovsbr ovsint0 -- set Interface ovsint0 type=internal
#ovs-vsctl del-port ovsint0
ovs-vsctl add-br kubebr
ovs-vsctl show
