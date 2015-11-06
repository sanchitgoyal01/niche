#!/bin/bash

set -e

if [ ! -f /tmp/vagrant_public_key ]; then
    echo "Public key not found!"
    return 1
fi

# --------------- SSH KEYS ---------------------- #
echo "making .ssh directory"
mkdir /home/vagrant/.ssh

echo "changing the permissions on .ssh"
chmod 700 /home/vagrant/.ssh

echo "getting the vagrant public key and setting up authorized_keys"
cd /home/vagrant/.ssh
cat '/tmp/vagrant_public_key' >> /home/vagrant/.ssh/authorized_keys

echo "changing the permissions and owner of the authorized_keys file"
chmod 600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh

echo "Removing public key"
rm /tmp/vagrant_public_key

