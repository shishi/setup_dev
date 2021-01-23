execute 'install ngrok' do
  command <<-EOS
    curl -LO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
    unzip ngrok-stable-linux-amd64.zip
    mkdir -p ~/.local/bin
    mv ngrok ~/.local/bin
    rm ngrok-stable-linux-amd64.zip
    ~/.local/bin/ngrok authtoken 1P1Bfl2VVXTwZimXHcllq8ReD6R_2PFGgP9oBa3nRsxouSHC4
  EOS
end
