execute 'install emacs' do
  command <<-EOS
    sudo add-apt-repository -y ppa:kelleyk/emacs
    sudo apt-get update -y
    sudo apt-get install -y --no-install-recommends emacs
  EOS
end
