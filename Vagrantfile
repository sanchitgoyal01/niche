# -*- mode: ruby -*-
# vi: set ft=ruby

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "centos-7"
  config.vm.box_url = "file://packer/boxes/centos-7.box"

  # Build Virtual Machine
  config.vm.define "bigdata" do |bigdata|
    bigdata.vm.network :private_network, ip: "192.168.40.10"
  end
end

