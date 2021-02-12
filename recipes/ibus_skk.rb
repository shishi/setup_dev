execute 'install ibus-skk with english keyboard' do
  command <<-EOS
    sudo apt-get update -y
    sudo apt-get install -y --no-install-recommends ibus-skk
    sudo sed -ie "s/<layout>ja<\/layout>/<layout>us<\/layout>/g" /usr/share/ibus/component/skk.xml
  EOS
end
