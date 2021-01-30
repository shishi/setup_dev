execute 'copy keys if in WSL' do
  command 'cp -fr /mnt/c/Users/shishi/OneDrive/dev/key ~/key'
  only_if 'test -d /mnt/c/Users/shishi/OneDrive/dev/key'
end

user = ENV['user'] || 'shishi'

execute 'copy keys if in multipass' do
  command <<-EOS
    sudo cp -fr /home/ubuntu/key ~/
  EOS
  only_if 'test -d /home/ubuntu/key'
end

execute 'install ssh key' do
  command <<-EOS
    sudo cp -fr ~/key/.ssh ~/
    sudo chown -R #{user}:#{user} ~/.ssh
    sudo chmod 600 ~/.ssh/id_rsa*
  EOS
end

execute 'install gpg key' do
  command <<-EOS
    sudo chown -R #{user}:#{user} ~/key/gpg
    gpg --import ~/key/gpg/shishi.pub.gpg
    gpg --import --allow-secret-key-import ~/key/gpg/shishi.sub.gpg
  EOS
end
