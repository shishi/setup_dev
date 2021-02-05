user = ENV.fetch('USER', 'shishi')

execute 'install samba' do
  command <<-EOS
    sudo apt-get install -y --no-install-recommends samba
    echo "
    [dev]
      path = /home/#{user}/dev
      writable = yes
      browseable = yes
      public = yes
      force create mode = 644
      force directory mode = 755
      force user = #{user}
    " | sudo tee -a /etc/samba/smb.conf
    sudo systemctl restart smbd
  EOS
end
