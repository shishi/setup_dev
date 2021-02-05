execute 'install kvm and qemu' do
  command <<-EOS
    sudo apt-get install -y --no-install-recommends qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
    # sudo apt-get install -y --no-install-recommends virt-manager
    sudo systemctl enable --now libvirtd
  EOS
end
