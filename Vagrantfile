# coding: utf-8

Vagrant.require_version ">= 1.6.0"

Vagrant.configure("2") do |config|

  config.vm.define "vault", autostart: true do |vault|
    vault.vm.box = "ubuntu/xenial64"

    vault.vm.provider "virtualbox" do |vb|
      vb.linked_clone = true
      vb.memory = "512"
    end

    vault.vm.hostname = "vault.vm"

    ip_address = "10.13.39.31"

    vault.vm.provision "shell", path: "vault/vault-server.sh"
  end

end
