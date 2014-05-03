#!/usr/bin/env bash

mkdir python-enviroment; cd python-enviroment;

curl -O https://raw.githubusercontent.com/adionditsak/vagrant-python-env/master/Vagrantfile
curl -O https://raw.githubusercontent.com/adionditsak/vagrant-python-env/master/provision.sh

vagrant up
