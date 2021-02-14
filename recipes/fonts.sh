#! /bin/bash

set -ex

mkdir -p ~/.fonts

curl -fsSLO --retry 3 https://github.com/tomokuni/Myrica/raw/master/product/MyricaM.zip
unzip -d myricam MyricaM.zip 
cp myricam/MyricaM.TTC ~/.fonts/
rm -fr myricam

curl -fsSL --retry 3 https://github.com/edihbrandon/RictyDiminished/archive/3.2.3.zip -o ricty.zip
unzip ricty.zip
cp RictyDiminished-3.2.3/*.ttf ~/.fonts/
rm -fr ricty.zip RictyDiminished-3.2.3
