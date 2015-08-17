#!/usr/bin/env bash
# simple provision for Python3 ready Vagrant box with Ubuntu 14

hostname vagrant-python-env

echo ""
echo "apt-get update"
echo ""
apt-get update

echo ""
echo "Linux utils"
echo ""
apt-get install -y linux-headers-$(uname -r) build-essential git-core
apt-get install -y libxml2-dev libxslt-dev curl libcurl4-openssl-dev
apt-get install -y libreadline-dev

echo ""
echo "Python utils"
echo ""
apt-get install -y python3 python3-setuptools python3-dev libpq-dev pep8

echo ""
echo "apt-get cleanup"
echo ""
apt-get clean

echo ""
echo "pip, ipython and virtualenv"
echo ""
apt-get install -y python3-pip ipython3
pip3 install virtualenv
pip3 install virtualenvwrapper

echo ""
echo ".vimrc"
echo ""
cat <<EOF >> ~/.vimrc
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
syntax on
colorscheme pablo
EOF

echo ""
echo "Disabling firewall"
echo ""
sudo ufw disable

reboot
