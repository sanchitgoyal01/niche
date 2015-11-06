#!/bin/bash -eux

# https://access.redhat.com/site/solutions/58625 (subscription required)
if [[ "$PACKER_BUILDER_TYPE" == virtualbox* ]]; then
  echo 'RES_OPTIONS="single-request-reopen"' >> /etc/sysconfig/network
  service network restart
  echo 'Slow DNS fix applied (single-request-reopen)'
else
  echo 'Slow DNS fix not required for this platform, skipping'
fi
