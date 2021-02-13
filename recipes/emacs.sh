set -ex

sudo add-apt-repository -y ppa:kelleyk/emacs
sudo apt-get update -yqq
sudo apt-get install -yqq --no-install-recommends emacs
