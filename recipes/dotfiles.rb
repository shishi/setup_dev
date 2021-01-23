# already ssh keys installed

execute 'clone dotfiles' do
  command <<-EOS
    mkdir -p ~/dev/src/github.com/shishi/
    GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" git clone git@github.com:shishi/dotfiles.git ~/dev/src/github.com/shishi/dotfiles
  EOS
  not_if 'test -d ~/dev/src/github.com/shishi/dotfiles'
end

execute 'pull dotfiles' do
  command <<-EOS
    GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" git -C ~/dev/src/github.com/shishi/dotfiles pull
  EOS
  only_if 'test -d ~/dev/src/github.com/shishi/dotfiles'
end

execute 'setup dotfiles' do
  command 'bash ~/dev/src/github.com/shishi/dotfiles/ln_setup.sh'
end
