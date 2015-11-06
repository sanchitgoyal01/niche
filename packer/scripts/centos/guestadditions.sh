cd /tmp
mount -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf /vagrant/vagrant/VBoxGuestAdditions.iso
