execute 'install vscode liveshare dependencies' do
  command <<-EOS
    sudo apt-get update -y
    curl -sSLo ~/vsls-reqs https://aka.ms/vsls-linux-prereq-script
    chmod +x ~/vsls-reqs
    ~/vsls-reqs
    rm ~/vsls-reqs
  EOS
end
