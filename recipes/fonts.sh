#! /usr/bin/bash

set -ex

mkdir -p ~/.fonts

# curl -fsSLO --retry 3 https://github.com/edihbrandon/RictyDiminished/archive/3.2.3.zip
# unzip -o 3.2.3.zip
# cp RictyDiminished-3.2.3/*.ttf ~/.fonts/
# rm -fr 3.2.3.zip RictyDiminished-3.2.3

curl -fsSLO --retry 3 https://github.com/yuru7/HackGen/releases/download/v2.8.0/HackGen_v2.8.0.zip
unzip -o HackGen_v2.8.0.zip
cp HackGen_v2.8.0/*.ttf ~/.fonts/
rm -fr HackGen_v2.8.0.zip HackGen_v2.8.0

curl -fsSLO --retry 3 https://github.com/yuru7/HackGen/releases/download/v2.8.0/HackGen_NF_v2.8.0.zip
unzip -o HackGen_NF_v2.8.0.zip
cp HackGen_NF_v2.8.0/*.ttf ~/.fonts/
rm -fr HackGen_NF_v2.8.0.zip HackGen_NF_v2.8.0

curl -fsSLO --retry 3 https://github.com/yuru7/PlemolJP/releases/download/v1.4.0/PlemolJP_v1.4.0.zip
unzip -o PlemolJP_v1.4.0.zip
cp PlemolJP_v1.4.0/**/*.ttf ~/.fonts/
rm -fr PlemolJP_v1.4.0.zip PlemolJP_v1.4.0

curl -fsSLO --retry 3 https://github.com/yuru7/PlemolJP/releases/download/v1.4.0/PlemolJP_NF_v1.4.0.zip
unzip -o PlemolJP_NF_v1.4.0.zip
cp PlemolJP_NF_v1.4.0/**/*.ttf ~/.fonts/
rm -fr PlemolJP_NF_v1.4.0.zip PlemolJP_NF_v1.4.0

curl -fsSLO --retry 3 https://github.com/yuru7/PlemolJP/releases/download/v1.4.0/PlemolJP_NFJ_v1.4.0.zip
unzip -o PlemolJP_NFJ_v1.4.0.zip
cp PlemolJP_NFJ_v1.4.0/**/*.ttf ~/.fonts/
rm -fr PlemolJP_NFJ_v1.4.0.zip PlemolJP_NFJ_v1.4.0

curl -fsSLO --retry 3 https://github.com/yuru7/PlemolJP/releases/download/v1.4.0/PlemolJP_HS_v1.4.0.zip
unzip -o PlemolJP_HS_v1.4.0.zip
cp PlemolJP_HS_v1.4.0/**/*.ttf ~/.fonts/
rm -fr PlemolJP_HS_v1.4.0.zip PlemolJP_HS_v1.4.0

curl -fsSLO --retry 3 https://github.com/yuru7/udev-gothic/releases/download/v1.1.0/UDEVGothic_v1.1.0.zip
unzip -o UDEVGothic_v1.1.0.zip
cp UDEVGothic_v1.1.0/*.ttf ~/.fonts/
rm -fr UDEVGothic_v1.1.0.zip UDEVGothic_v1.1.0

curl -fsSLO --retry 3 https://github.com/yuru7/udev-gothic/releases/download/v1.1.0/UDEVGothic_NF_v1.1.0.zip
unzip -o UDEVGothic_NF_v1.1.0.zip
cp UDEVGothic_NF_v1.1.0/*.ttf ~/.fonts/
rm -fr UDEVGothic_NF_v1.1.0.zip UDEVGothic_NF_v1.1.0

curl -fsSLO --retry 3 https://github.com/yuru7/BIZTER/releases/download/v0.0.1/BIZTER_v0.0.1.zip
unzip -o BIZTER_v0.0.1.zip
cp BIZTER_v0.0.1/*.ttf ~/.fonts/
rm -fr BIZTER_v0.0.1.zip BIZTER_v0.0.1

curl -fsSL --retry 3 "https://fonts.google.com/download?family=BIZ%20UDGothic" -o BIZ_UDGothic.zip
unzip -o BIZ_UDGothic.zip
cp BIZUDGothic-*.ttf ~/.fonts/
rm -fr BIZ_UDGothic* OFL.txt

curl -fsSL --retry 3 "https://fonts.google.com/download?family=BIZ%20UDPGothic" -o BIZ_UDPGothic.zip
unzip -o BIZ_UDPGothic.zip
cp BIZUDPGothic-*.ttf ~/.fonts/
rm -fr BIZ_UDPGothic* OFL.txt

curl -fsSL --retry 3 "https://fonts.google.com/download?family=BIZ%20UDPMincho" -o BIZ_UDPMincho.zip
unzip -o BIZ_UDPMincho.zip
cp BIZUDPMincho-*.ttf ~/.fonts/
rm -fr BIZ_UDPMincho* OFL.txt


