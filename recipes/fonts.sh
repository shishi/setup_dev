#! /usr/bin/bash

set -ex

mkdir -p ~/.fonts

curl -fsSLO --retry 3 https://github.com/edihbrandon/RictyDiminished/archive/3.2.3.zip
unzip 3.2.3.zip
cp RictyDiminished-3.2.3/*.ttf ~/.fonts/
rm -fr 3.2.3.zip RictyDiminished-3.2.3

curl -fsSLO --retry 3 https://github.com/yuru7/HackGen/releases/download/v2.2.3/HackGenNerd_v2.2.3.zip
unzip HackGenNerd_v2.2.3.zip
cp HackGenNerd_v2.2.3/*.ttf ~/.fonts/
rm -fr HackGenNerd_v2.2.3.zip HackGenNerd_v2.2.3

curl -fsSLO --retry 3 https://github.com/yuru7/PlemolJP/releases/download/v1.2.3/PlemolJP_v1.2.3.zip
unzip PlemolJP_v1.2.3.zip
cp PlemolJP_v1.2.3/**/*.ttf ~/.fonts/
rm -fr PlemolJP_v1.2.3.zip PlemolJP_v1.2.3

curl -fsSLO --retry 3 https://github.com/yuru7/PlemolJP/releases/download/v1.2.3/PlemolJP_NF_v1.2.3.zip
unzip PlemolJP_NF_v1.2.3.zip
cp PlemolJP_NF_v1.2.3.zip/**/*.ttf ~/.fonts/
rm -fr PlemolJP_NF_v1.2.3.zip PlemolJP_NF_v1.2.3

curl -fsSLO --retry 3 https://github.com/yuru7/PlemolJP/releases/download/v1.2.3/PlemolJP_HS_v1.2.3.zip
unzip PlemolJP_HS_v1.2.3.zip
cp PlemolJP_HS_v1.2.3.zip/**/*.ttf ~/.fonts/
rm -fr PlemolJP_HS_v1.2.3.zip PlemolJP_HS_v1.2.3
