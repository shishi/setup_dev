execute 'install nodejs' do
  command <<-EOS
    sudo curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
    sudo apt-get update -y
    sudo apt-get install -y --no-install-recommends nodejs
  EOS
end
