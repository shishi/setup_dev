# sudo visudo
# shishi ALL=(ALL:ALL) ALL
# install mitamae manually do like in cloud-init.yml

include_recipe './recipes/basic_packages.rb'
include_recipe './recipes/emacs.rb'
include_recipe './recipes/google_chrome.rb'
include_recipe './recipes/google_cloud_sdk.rb'
include_recipe './recipes/nodejs.rb'
include_recipe './recipes/yarn.rb'
include_recipe './recipes/pip.rb'
include_recipe './recipes/vscode_liveshare.rb'
include_recipe './recipes/key.rb'
include_recipe './recipes/dotfiles.rb'
include_recipe './recipes/rbenv.rb'
include_recipe './recipes/fish.rb'
include_recipe './recipes/inotify.rb'
include_recipe './recipes/ghq.rb'
include_recipe './recipes/ngrok.rb'
include_recipe './recipes/kvm.rb'