# If HyperV, Admin PowerShell In Windows Host for kvm
# Set-VMProcessor -VMName "VM_NAME" -ExposeVirtualizationExtensions $true

# echo "shishi ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
# sudo usermod -aG vboxsf shishi
# mkdir -p /home/shishi/.local/bin
# curl -L https://github.com/itamae-kitchen/mitamae/releases/latest/download/mitamae-x86_64-linux.tar.gz | tar xvz
# mv ./mitamae-x86_64-linux /home/shishi/.local/bin/mitamae
# ~/.local/bin/mitamae local /media/sf_shishi/OneDrive/dev/src/github.com/shishi/setup_dev/vm_ubuntu.rb

# include_recipe './recipes/wslconf.rb'

include_recipe './recipes/basic_packages.rb'
include_recipe './recipes/virtualbox_guests.rb'

include_recipe './recipes/docker.rb'
include_recipe './recipes/docker-compose.rb'

include_recipe './recipes/emacs.rb'
include_recipe './recipes/google_chrome.rb'
# include_recipe './recipes/vivaldi.rb'
include_recipe './recipes/google_cloud_sdk.rb'
include_recipe './recipes/hashicorp.rb'
include_recipe './recipes/inotify.rb'
include_recipe './recipes/kvm.rb'
include_recipe './recipes/nodejs.rb'
include_recipe './recipes/samba.rb'
include_recipe './recipes/vscode_liveshare.rb'
include_recipe './recipes/yarn.rb'
# include_recipe './recipes/ibus_skk.rb'

include_recipe './recipes/key.rb'
include_recipe './recipes/dotfiles.rb'

include_recipe './recipes/rbenv.rb'
include_recipe './recipes/pip.rb'
include_recipe './recipes/ghq.rb'
include_recipe './recipes/ngrok.rb'
include_recipe './recipes/fonts.rb'

include_recipe './recipes/fish.rb'
