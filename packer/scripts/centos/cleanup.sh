#!/bin/bash -eux

yum -y clean all

# Cleanup Redhat rules
rm -f /etc/udev/rules.d/70-persistent-net.rules

if [ -r /etc/sysconfig/network-scripts/ifcfg-eth0 ]; then
  sed -i 's/^HWADDR.*$//' /etc/sysconfig/network-scripts/ifcfg-eth0
  sed -i 's/^UUID.*$//' /etc/sysconfig/network-scripts/ifcfg-eth0
fi
