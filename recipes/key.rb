execute 'copy keys if in WSL' do
  command 'cp -fr /mnt/c/Users/shishi/OneDrive/dev/key ~/key'
  only_if 'test -d /mnt/c/Users/shishi/OneDrive/dev/key'
end

user = ENV.fetch('USER', 'shishi')

execute 'copy keys if in multipass' do
  command <<-EOS
    sudo cp -fr /home/ubuntu/key ~/
    sudo chown -R #{user}:#{user} ~/key
  EOS
  only_if 'test -d /home/ubuntu/key'
end

execute 'copy keys if in vagrant' do
  command <<-EOS
    sudo cp -fr /synced_home/dev/key ~/
    sudo chown -R #{user}:#{user} ~/key
  EOS
  only_if 'test -d /synced_home/dev/key'
end

execute 'copy keys if in vagrant ver.2' do
  command <<-EOS
    sudo cp -fr /synced_home/OneDrive/dev/key ~/key
    sudo chown -R #{user}:#{user} ~/key
  EOS
  only_if 'test -d /synced_home/OneDrive/dev/key'
end

execute 'copy keys if in normal virtualbox' do
  command <<-EOS
    sudo cp -fr /media/sf_shishi/OneDrive/dev/key/ ~/key
    sudo chown -R #{user}:#{user} ~/key
  EOS
  only_if 'test -d /media/sf_shishi/OneDrive/dev/key/'
end

execute 'install ssh key' do
  command <<-EOS
    sudo cp -fr ~/key/.ssh ~/
    sudo chmod 600 ~/.ssh/id_rsa*
  EOS
end

execute 'install gpg key' do
  command <<-EOS
    gpg --import ~/key/gpg/shishi.pub.gpg
    gpg --import --allow-secret-key-import ~/key/gpg/shishi.sub.gpg
  EOS
end
