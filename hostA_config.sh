#/bin/bash
ip addr add 192.168.0.101/24 dev eth0
ip link add vxlan1 type vxlan id 1 group 239.0.0.1 ttl 4 dev eth0 port 0 0
ip addr add 10.10.11.21/24 dev vxlan1
ip link set dev vxlan1 up
