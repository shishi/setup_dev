execute 'install pip for user' do
  command <<-EOS
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python get-pip.py --user
    rm get-pip.py
  EOS
end

execute 'install pip packages' do
  command '~/.local/bin/pip install awscli python-openstackclient'
end
