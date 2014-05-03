#!/usr/bin/env bash

mkdir vagrant-python-env
cd vagrant-python-env

curl -O https://raw.githubusercontent.com/adionditsak/vagrant-python-env/master/Vagrantfile
curl -O https://raw.githubusercontent.com/adionditsak/vagrant-python-env/master/provision.sh

vagrant up
