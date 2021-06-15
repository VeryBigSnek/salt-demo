#!/usr/bin/env bash
set -eu

curl -fsSL -o /usr/share/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/py3/ubuntu/18.04/amd64/latest/salt-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/salt-archive-keyring.gpg] https://repo.saltproject.io/py3/ubuntu/18.04/amd64/latest bionic main" | tee /etc/apt/sources.list.d/salt.list

apt-get -y update
apt-get -y install salt-minion salt-ssh salt-api

echo 'master: 10.0.6.60' >> /etc/salt/minion
systemctl restart salt-minion
