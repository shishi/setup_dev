execute 'install kvm and qemu' do
  command <<-EOS
    sudo apt install -y --no-install-recommends qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils
    sudo systemctl enable --now libvirtd
  EOS
end
