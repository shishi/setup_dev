execute 'install vagrant' do
  command <<-EOS
    curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
    sudo apt-add-repository -y "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
    sudo apt-get update -y
    sudo apt-get install -y --no-install-recommends vagrant virtualbox
  EOS
end
