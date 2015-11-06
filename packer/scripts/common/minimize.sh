#!/bin/sh


yum clean packages
yum clean headers
yum clean metadata
yum clean all


dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
sync

unset HISTFILE
rm -f /root/.bash_history
rm -f /home/vagrant/.bash_history

