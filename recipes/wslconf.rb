user = ENV['user'] || 'shishi'

execute 'copy wsl.conf' do
  command <<-EOS
    sudo cp /mnt/c/Users/shishi/OneDrive/save/_conf/win/wsl.conf /etc/
  EOS
  only_if 'test -e /mnt/c/Users/shishi/OneDrive/save/_conf/win/wsl.conf'
end
