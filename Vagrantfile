# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-20.04"
  config.vm.network "private_network", ip: "192.168.56.10"

  config.vm.synced_folder '.', '/vagrant'
  config.vm.synced_folder '~', '/synced_home'

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "8192"
    vb.cpus = 2
    vb.customize [
      "modifyvm", :id,
      "--vram", "256",
      "--clipboard", "bidirectional",
      "--draganddrop", "bidirectional",
      "--accelerate3d", "on",
      "--ioapic", "on",
    ]
    # https://github.com/hashicorp/vagrant/issues/11777
    vb.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
    vb.customize ["modifyvm", :id, "--uartmode1", "file", File::NULL]
  end
  config.vm.disk :disk, size: "200GB", primary: true

  config.vm.provision 'shell', inline: <<-SHELL
    sudo parted /dev/sda resizepart 2 100%
    sudo parted /dev/sda resizepart 5 100%
    sudo pvresize /dev/sda5
    sudo lvextend -l +100%FREE -r /dev/mapper/vgvagrant-root
  SHELL

  config.vm.provision 'shell', privileged: false, inline: <<-SHELL
    mkdir -p /home/vagrant/.local/bin
    curl -L https://github.com/itamae-kitchen/mitamae/releases/latest/download/mitamae-x86_64-linux.tar.gz | tar xvz
    mv ./mitamae-x86_64-linux /home/vagrant/.local/bin/mitamae
    ~/.local/bin/mitamae local /vagrant/vagrant_ubuntu.rb

    # GIT_SSH_COMMAND='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no' ~/.local/bin/ghq get -p git.pepabo.com/minne/setup-web-application
  SHELL
end
