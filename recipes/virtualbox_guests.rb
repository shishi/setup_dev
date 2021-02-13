execute 'install virtualbox-guest-x11' do
  command <<-EOS
    sudo apt-get update -y
    DEBIAN_FRONTEND=noninteractive sudo apt-get install -y --no-install-recommends virtualbox-guest-x11
  EOS
end
