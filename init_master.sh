#!/usr/bin/env bash
set -eu

curl -fsSL -o /usr/share/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/py3/ubuntu/18.04/amd64/latest/salt-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/salt-archive-keyring.gpg] https://repo.saltproject.io/py3/ubuntu/18.04/amd64/latest bionic main" | tee /etc/apt/sources.list.d/salt.list

apt-get -y update
apt-get -y install salt-master salt-ssh salt-api git

git clone https://github.com/VeryBigSnek/salt-demo.git

ln -s $PWD/salt-demo/salt /srv/salt
