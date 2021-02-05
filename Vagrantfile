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

    # sudo apt-get install -y --no-install-recommends apt-transport-https ca-certificates curl gnupg-agent software-properties-common unzip samba
    # curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    # sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
    # sudo apt-get update -y
    # sudo apt-get install -y --no-install-recommends docker-ce
    # sudo usermod -aG docker vagrant
    # sudo systemctl enable --now docker
    # sudo curl -L https://github.com/docker/compose/releases/download/1.28.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
    # sudo chmod +x /usr/local/bin/docker-compose

    # echo "
    # [minne]
    #   path = /home/vagrant/dev/src
    #   writable = yes
    #   browseable = yes
    #   public = yes
    #   force create mode = 644
    #   force directory mode = 755
    #   force user = vagrant
    #   " | sudo tee -a /etc/samba/smb.conf
    # sudo systemctl restart smbd

    # echo "fs.inotify.max_user_watches=524288" | sudo tee -a /etc/sysctl.conf
    # sudo sysctl -p
  SHELL

  config.vm.provision 'shell', privileged: false, inline: <<-SHELL
    mkdir -p /home/vagrant/.local/bin
    curl -L https://github.com/itamae-kitchen/mitamae/releases/latest/download/mitamae-x86_64-linux.tar.gz | tar xvz
    mv ./mitamae-x86_64-linux /home/vagrant/.local/bin/mitamae
    ~/.local/bin/mitamae local /vagrant/vagrant_ubuntu.rb

    # chmod 600  ~/.ssh/id_rsa
    # curl -LO https://github.com/x-motemen/ghq/releases/download/v1.1.5/ghq_linux_amd64.zip
    # unzip ghq_linux_amd64.zip
    # chmod +x ghq_linux_amd64/ghq
    # mkdir -p ~/.local/bin
    # mv ghq_linux_amd64/ghq ~/.local/bin
    # rm -r ghq_linux_amd64*
    # if [ -z $(git config ghq.root) ]; then
    #   git config --global ghq.root ~/dev/src
    # fi
    # GIT_SSH_COMMAND='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no' ~/.local/bin/ghq get -p git.pepabo.com/minne/setup-web-application
  SHELL
end
