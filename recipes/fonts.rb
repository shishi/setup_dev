execute 'install MyricaM' do
  command <<-EOS
    curl -sSLO https://github.com/tomokuni/Myrica/raw/master/product/MyricaM.zip
    unzip -d myricam MyricaM.zip 
    mkdir -p ~/.fonts
    cp myricam/MyricaM.TTC ~/.fonts/
    rm -fr myricam
  EOS
end

execute 'install ricty' do
  commands <<-EOS
    curl -sSL https://github.com/edihbrandon/RictyDiminished/archive/3.2.3.zip -o ricty.zip
    unzip ricty.zip
    mkdir -p ~/.fonts
    cp RictyDiminished-3.2.3/*.ttf ~/.fonts/
    rm -fr ricty.zip RictyDiminished-3.2.3
  EOS
end
