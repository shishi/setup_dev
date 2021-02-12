execute 'install vivaldi' do
  command <<-EOS
    curl -sS https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
    sudo add-apt-repository -y 'deb https://repo.vivaldi.com/archive/deb/ stable main'
    sudo apt-get update -y
    sudo apt-get install -y --no-install-recommends vivaldi-stable
  EOS
end
