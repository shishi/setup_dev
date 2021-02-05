execute 'max inotify' do
  command <<-EOS
    echo "fs.inotify.max_user_watches=524288" | sudo tee -a /etc/sysctl.conf
    sudo sysctl -p
  EOS
end
