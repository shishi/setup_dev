execute 'install docker-ce' do
  command <<-EOS
    sudo apt-get install -y --no-install-recommends apt-transport-https ca-certificates curl gnupg-agent software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
    sudo apt-get update -y
    sudo apt-get install -y --no-install-recommends docker-ce
  EOS
end

user = ENV['user'] || 'shishi'
# execute 'sudo groupadd docker'
execute 'after install docker' do
  command <<-EOS
    sudo usermod -aG docker #{user}
    sudo systemctl enable docker
  EOS
end
