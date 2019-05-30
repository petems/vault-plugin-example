#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

#
# Install Vault server
#

cd /tmp
apt-get -y install unzip
wget https://releases.hashicorp.com/vault/1.1.2/vault_1.1.2_linux_amd64.zip
unzip vault*.zip
install -c -m 0755 /tmp/vault /usr/local/sbin
install -c -m 0644 /vagrant/vault/vault.service /etc/systemd/system
install -d -m 0755 -o vagrant /data/vault /etc/vault
install -c -m 0644 /vagrant/vault/vault.hcl /etc/vault

mkdir -p /mnt/vault/data
mkdir -p /etc/vault/plugins/

systemctl daemon-reload
systemctl enable vault
systemctl restart vault
