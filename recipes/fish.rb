execute 'install fish' do
  command <<-EOS
    sudo add-apt-repository -y ppa:fish-shell/release-3
    sudo apt-get update -y
    sudo apt-get install -y --no-install-recommends fish
    echo "exec fish" >> ~/.bashrc
  EOS
end

# execute 'install fisher' do
#   command <<-EOS
#     curl https://git.io/fisher --create-dirs -sLo  ~/.config/fish/functions/fisher.fish
#     fisher
#   EOS
# end
