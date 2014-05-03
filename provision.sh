#!/usr/bin/env bash
# simple provision for Python ready Vagrant box with Ubuntu 14

hostname python-enviroment

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
apt-get install -y python3 python-setuptools python-dev libpq-dev pep8

echo ""
echo "apt-get cleanup"
echo ""
apt-get clean

echo ""
echo "pip, ipython and virtualenv"
echo ""
easy_install pip
easy_install ipython
pip install virtualenv
pip install virtualenvwrapper
