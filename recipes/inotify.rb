execute 'max inotify' do
  command 'echo "fs.inotify.max_user_watches=524288" | sudo tee -a /etc/sysctl.conf'
end
