execute 'install vscode liveshare dependencies' do
  command <<-EOS
    # https://docs.microsoft.com/ja-jp/visualstudio/liveshare/reference/linux
    sudo apt install libssl1.0.0 libkrb5-3 zlib1g libicu[0-9][0-9] gnome-keyring libsecret-1-0 desktop-file-utils x11-utils
  EOS
end
