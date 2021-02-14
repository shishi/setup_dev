#! /bin/bash

set -ex

mkdir -p ~/.fonts

curl -fsSLO --retry 3 https://github.com/tomokuni/Myrica/raw/master/product/MyricaM.zip
unzip -d myricam MyricaM.zip 
cp myricam/MyricaM.TTC ~/.fonts/
rm -fr MyricaM.zip myricam

curl -fsSLO --retry 3 https://github.com/edihbrandon/RictyDiminished/archive/3.2.3.zip
unzip 3.2.3.zip
cp RictyDiminished-3.2.3/*.ttf ~/.fonts/
rm -fr 3.2.3.zip RictyDiminished-3.2.3

curl -fsSLO --retry 3 https://github.com/yuru7/HackGen/releases/download/v2.2.3/HackGenNerd_v2.2.3.zip
unzip HackGenNerd_v2.2.3.zip
cp HackGenNerd_v2.2.3/*.ttf ~/.fonts/
rm -fr HackGenNerd_v2.2.3.zip HackGenNerd_v2.2.3
