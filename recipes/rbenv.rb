execute 'install rbenv' do
  command <<-EOS
    sudo apt-get update -y
    sudo apt-get install -y --no-install-recommends autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev
    GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    echo export PATH="$HOME/.rbenv/bin:$PATH" >> ~/.bash_profile
  EOS
  not_if 'test -d ~/.rbenv'
end
# execute 'set -Ux fish_user_paths $HOME/.rbenv/bin $fish_user_paths'

execute 'pull rbenv' do
  command <<-EOS
    GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" git -C ~/.rbenv pull
  EOS
  only_if 'test -d ~/.rbenv'
end

execute 'install ruby-build' do
  command <<-EOS
    mkdir -p ~/.rbenv/plugins
    GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
  EOS
  not_if 'test -d ~/.rbenv/plugins/ruby-build'
end

execute 'pull ruby-build' do
  command <<-EOS
    GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" git -C ~/.rbenv/plugins/ruby-build pull
  EOS
  only_if 'test -d ~/.rbenv/plugins/ruby-build'
end

execute 'install ruby' do
  command <<-EOS
    ~/.rbenv/bin/rbenv install --skip-existing 3.0.0
    ~/.rbenv/bin/rbenv global 3.0.0
  EOS
end

execute 'speed up rbenv for bash' do
  command <<-EOS
    ~/.rbenv/src/configure
    make -C ~/.rbenv/src
  EOS
end
